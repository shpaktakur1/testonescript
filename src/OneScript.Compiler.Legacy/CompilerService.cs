﻿/*----------------------------------------------------------
This Source Code Form is subject to the terms of the 
Mozilla Public License, v.2.0. If a copy of the MPL 
was not distributed with this file, You can obtain one 
at http://mozilla.org/MPL/2.0/.
----------------------------------------------------------*/

using System;
using System.Collections.Generic;
using OneScript.Language;
using OneScript.Language.LexicalAnalysis;
using ScriptEngine;
using ScriptEngine.Compiler;
using ScriptEngine.Environment;
using ScriptEngine.Machine;

namespace OneScript.Compiler.Legacy
{
    public class CompilerService : ICompilerService
    {
        SymbolScope _scope;

        private readonly ModuleCompilerContext _currentContext;
        private readonly List<string> _preprocessorVariables = new List<string>();
        

        internal CompilerService(ICompilerContext outerContext)
        {
            _currentContext = new ModuleCompilerContext(outerContext);
        }

        public CodeGenerationFlags ProduceExtraCode { get; set; }

        public int DefineVariable(string name, string alias, SymbolType type)
        {
            RegisterScopeIfNeeded();

            try
            {
                int varIdx;
                if (type == SymbolType.Variable)
                    varIdx = _currentContext.DefineVariable(name, alias).CodeIndex;
                else
                    varIdx = _currentContext.DefineProperty(name, alias).CodeIndex;

                return varIdx;
            }
            catch
            {
                _currentContext.PopScope();
                _scope = null;
                throw;
            }
        }

        public int DefineMethod(MethodSignature methodSignature)
        {
            RegisterScopeIfNeeded();

            return _currentContext.DefineMethod(methodSignature).CodeIndex;
        }

        public void DefinePreprocessorValue(string name)
        {
            _preprocessorVariables.Add(name);
        }
        
        private void RegisterScopeIfNeeded()
        {
            if (_scope == null)
            {
                _scope = new SymbolScope();
                _currentContext.PushScope(_scope);
            }
        }

        public ModuleImage Compile(ICodeSource source)
        {
            try
            {
                return CompileInternal(source);
            }
            finally
            {
                _currentContext.PopScope();
                _scope = null;
            }
        }

        public ModuleImage CompileExpression(ICodeSource source)
        {
            throw new NotImplementedException();
        }

        public ModuleImage CompileBatch(ICodeSource source)
        {
            throw new NotImplementedException();
        }

        private ModuleImage CompileInternal(ICodeSource source)
        {
            RegisterScopeIfNeeded();

            var parser = new LegacyPreprocessingLexer();
            foreach (var variable in _preprocessorVariables)
            {
                parser.Define(variable);
            }

            parser.UnknownDirective += UnknownDirectiveHandler;
            parser.Code = source.Code;

            if (DirectiveResolver != null)
            {
                DirectiveResolver.Source = source;
            }

            ModuleImage compiledImage;
            try
            {
                compiledImage = CreateImage(_currentContext, source, parser);
            }
            finally
            {
                if (DirectiveResolver != null)
                {
                    DirectiveResolver.Source = null;
                }
            }

            var mi = CreateModuleInformation(source, parser);
            compiledImage.ModuleInfo = mi;

            return compiledImage;
        }

        protected static ModuleInformation CreateModuleInformation(ICodeSource source, ILexer parser)
        {
            var mi = new ModuleInformation
            {
                CodeIndexer = parser.Iterator,
                ModuleName = source.SourceDescription,// пока у модулей нет собственных имен, будет совпадать с источником модуля
                Origin = source.SourceDescription
            };
            
            return mi;
        }
        
        protected virtual ModuleImage CreateImage(ICompilerContext context, ICodeSource source, ILexemGenerator lexer)
        {
            try
            {
                var compiler = new ScriptEngine.Compiler.Compiler();
                compiler.ProduceExtraCode = ProduceExtraCode;
                compiler.DirectiveHandler = ResolveDirective;
                return compiler.Compile(lexer, _currentContext);
            }
            catch (ScriptException e)
            {
                if(e.ModuleName == null)
                    e.ModuleName = source.SourceDescription;

                throw;
            }
        }
        
        private bool ResolveDirective(string directive, string value, bool codeEntered)
        {
            if (DirectiveResolver != null)
            {
                return DirectiveResolver.Resolve(directive, value, codeEntered);
            }
            else
                return false;
        }

        private void UnknownDirectiveHandler(object sender, PreprocessorUnknownTokenEventArgs args)
        {
            var localLex = args.Lexem;
            args.IsHandled = ResolveDirective(args.Lexer, ref localLex);
            args.Lexem = localLex;
        }

        protected virtual bool ResolveDirective(ILexer lexer, ref Lexem lexem)
        {
            // все неизвестные директивы возвращать назад в результат лексера
            return true;
        }
        
        public IDirectiveResolver DirectiveResolver { get; set; }
    }
}