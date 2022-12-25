﻿Перем юТест;

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	юТест = ЮнитТестирование;
	
	ВсеТесты = Новый Массив;
	
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетодСуществует");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьВызовМетодаБезПараметров");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьВызовМетодаБезПараметровДляСтруктуры");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьВызовМетодаБезПараметров_ЯвноПередаюПустойМассив");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов");

	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоУСтруктурыМетодСуществует");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляСтруктуры");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоУСоответствияМетодСуществует");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляСоответствия");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоУРефлектораМетодСуществует");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляРефлектора");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляРазныхТипов");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоПараметрыИзмененныеВПроцедуреВозвращеныВМассив");
	
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуСвойств");

	ВсеТесты.Добавить("ТестДолжен_ПроверитьВызовМетодаСПараметрамиПоУмолчанию");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетодСуществуетДляТипа");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьПолучитьТаблицуМетодовДляТипа");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьПолучитьТаблицуСвойствДляСистемногоТипа");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьПолучитьТаблицуСвойствДляТипа");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоУПараметровЕстьИмена");

	ВсеТесты.Добавить("ТестДолжен_ПроверитьУстановкуПриватногоСвойства");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьУстановкуПубличногоСвойства");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьПолучениеПриватногоСвойства");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьПолучениеПубличногоСвойства");

	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ПроверитьЗначенияПоУмолчанию");

	Возврат ВсеТесты;
КонецФункции

Процедура ТестДолжен_ПроверитьМетодСуществует() Экспорт
	Пример = ПолучитьОбъектДляПроверки("Пример_reflector");
	
	ИмяМетода = "Версия";
	Рефлектор = Новый Рефлектор;
	ЕстьМетод = Рефлектор.МетодСуществует(Пример, ИмяМетода);

	юТест.Проверить(ЕстьМетод);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтоУСтруктурыМетодСуществует() Экспорт
	Пример = Новый Структура;
	
	ИмяМетода = "Вставить";
	Рефлектор = Новый Рефлектор;
	ЕстьМетод = Рефлектор.МетодСуществует(Пример, ИмяМетода);

	юТест.Проверить(ЕстьМетод);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтоУСоответствияМетодСуществует() Экспорт
	Пример = Новый Соответствие;
	
	ИмяМетода = "Вставить";
	Рефлектор = Новый Рефлектор;
	ЕстьМетод = Рефлектор.МетодСуществует(Пример, ИмяМетода);

	юТест.Проверить(ЕстьМетод);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтоУРефлектораМетодСуществует() Экспорт
	Пример = Новый Рефлектор;
	
	ИмяМетода = "МетодСуществует";
	Рефлектор = Новый Рефлектор;
	ЕстьМетод = Рефлектор.МетодСуществует(Пример, ИмяМетода);

	юТест.Проверить(ЕстьМетод);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьВызовМетодаБезПараметров() Экспорт
	Пример = ПолучитьОбъектДляПроверки("Пример_reflector");
	
	ИмяМетода = "Версия";
	Рефлектор = Новый Рефлектор;
	Версия = Рефлектор.ВызватьМетод(Пример, ИмяМетода);

	юТест.ПроверитьРавенство(Пример.Версия(), Версия);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьВызовМетодаБезПараметровДляСтруктуры() Экспорт
	Пример = Новый Структура;
	Пример.Вставить("Ключ", 1);
	
	ИмяМетода = "Очистить";
	Рефлектор = Новый Рефлектор;
	Версия = Рефлектор.ВызватьМетод(Пример, ИмяМетода);

	юТест.ПроверитьРавенство(0, Пример.Количество(), "Ожидали, что структура будет пустой");
КонецПроцедуры

Процедура ТестДолжен_ПроверитьВызовМетодаБезПараметров_ЯвноПередаюПустойМассив() Экспорт
	Пример = ПолучитьОбъектДляПроверки("Пример_reflector2");
	
	ИмяМетода = "Версия";
	ПустойМассив = Новый Массив;
	Рефлектор = Новый Рефлектор;
	Версия = Рефлектор.ВызватьМетод(Пример, ИмяМетода, ПустойМассив);

	юТест.ПроверитьРавенство(Пример.Версия(), Версия);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов() Экспорт
	Пример = ПолучитьОбъектДляПроверки("Пример_reflector2");
	
	Рефлектор = Новый Рефлектор;
	ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Пример);

	юТест.ПроверитьРавенство(Строка(ТипЗнч(ТаблицаМетодов)), "ТаблицаЗначений", "ТаблицаМетодов");
	юТест.ПроверитьРавенство(8, ТаблицаМетодов.Количество(), "ТаблицаМетодов.Количество()");

	Метод0 = ТаблицаМетодов.Найти("Версия", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод0, "Метод0");
	юТест.ПроверитьРавенство("Версия", Метод0.Имя, "Метод0.Имя");
	юТест.ПроверитьРавенство(0, Метод0.КоличествоПараметров, "Метод0.КоличествоПараметров");
	юТест.ПроверитьРавенство(Истина, Метод0.ЭтоФункция, "Метод0.ЭтоФункция");

	Метод1 = ТаблицаМетодов.Найти("ПолучитьСписокТестов", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод1, "Метод1");
	юТест.ПроверитьРавенство("ПолучитьСписокТестов", Метод1.Имя, "Метод1.Имя");
	юТест.ПроверитьРавенство(1, Метод1.КоличествоПараметров, "Метод1.КоличествоПараметров");
	юТест.ПроверитьРавенство(Истина, Метод1.ЭтоФункция, "Метод1.ЭтоФункция");

	Метод2 = ТаблицаМетодов.Найти("ТестДолжен_ПроверитьВерсию", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод2, "Метод2");
	юТест.ПроверитьРавенство("ТестДолжен_ПроверитьВерсию", Метод2.Имя, "Метод2.Имя");
	юТест.ПроверитьРавенство(0, Метод2.КоличествоПараметров, "Метод2.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод2.ЭтоФункция, "Метод2.ЭтоФункция");

	Метод3 = ТаблицаМетодов.Найти("ПриватнаяПроцедура", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод3, "Метод3");
	юТест.ПроверитьРавенство("ПриватнаяПроцедура", Метод3.Имя, "Метод3.Имя");
	юТест.ПроверитьРавенство(0, Метод3.КоличествоПараметров, "Метод3.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод3.ЭтоФункция, "Метод3.ЭтоФункция");
	юТест.ПроверитьРавенство(Ложь, Метод3.Экспорт, "Метод3.Экспорт");

	Метод4 = ТаблицаМетодов.Найти("ПриватнаяФункция", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод4, "Метод4");
	юТест.ПроверитьРавенство("ПриватнаяФункция", Метод4.Имя, "Метод4.Имя");
	юТест.ПроверитьРавенство(0, Метод4.КоличествоПараметров, "Метод4.КоличествоПараметров");
	юТест.ПроверитьРавенство(Истина, Метод4.ЭтоФункция, "Метод4.ЭтоФункция");
	юТест.ПроверитьРавенство(Ложь, Метод4.Экспорт, "Метод4.Экспорт");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляСтруктуры() Экспорт
	Пример = Новый Структура;
	Пример.Вставить("Ключ", 1);
	
	Рефлектор = Новый Рефлектор;
	ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Пример);

	юТест.ПроверитьРавенство(Строка(ТипЗнч(ТаблицаМетодов)), "ТаблицаЗначений", "ТаблицаМетодов");
	юТест.ПроверитьРавенство(5, ТаблицаМетодов.Количество(), "ТаблицаМетодов.Количество()");

	Метод0 = ТаблицаМетодов.Найти("Вставить", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод0, "Метод0");
	юТест.ПроверитьРавенство("Вставить", Метод0.Имя, "Метод0.Имя");
	юТест.ПроверитьРавенство(2, Метод0.КоличествоПараметров, "Метод0.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод0.ЭтоФункция, "Метод0.ЭтоФункция");

	Метод4 = ТаблицаМетодов.Найти("Очистить", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод4, "Метод4");
	юТест.ПроверитьРавенство("Очистить", Метод4.Имя, "Метод4.Имя");
	юТест.ПроверитьРавенство(0, Метод4.КоличествоПараметров, "Метод4.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод4.ЭтоФункция, "Метод4.ЭтоФункция");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляСоответствия() Экспорт
	Пример = Новый Соответствие;
	Пример.Вставить("Ключ", 1);
	
	Рефлектор = Новый Рефлектор;
	ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Пример);

	юТест.ПроверитьРавенство(Строка(ТипЗнч(ТаблицаМетодов)), "ТаблицаЗначений", "ТаблицаМетодов");
	юТест.ПроверитьРавенство(5, ТаблицаМетодов.Количество(), "ТаблицаМетодов.Количество()");

	Метод0 = ТаблицаМетодов.Найти("Вставить", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод0, "Метод0");
	юТест.ПроверитьРавенство("Вставить", Метод0.Имя, "Метод0.Имя");
	юТест.ПроверитьРавенство(2, Метод0.КоличествоПараметров, "Метод0.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод0.ЭтоФункция, "Метод0.ЭтоФункция");

	Метод4 = ТаблицаМетодов.Найти("Удалить", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод4, "Метод4");
	юТест.ПроверитьРавенство("Удалить", Метод4.Имя, "Метод4.Имя");
	юТест.ПроверитьРавенство(1, Метод4.КоличествоПараметров, "Метод4.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод4.ЭтоФункция, "Метод4.ЭтоФункция");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляРефлектора() Экспорт
	Пример = Новый Рефлектор;
	
	Рефлектор = Новый Рефлектор;
	ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Пример);

	юТест.ПроверитьРавенство(Строка(ТипЗнч(ТаблицаМетодов)), "ТаблицаЗначений", "ТаблицаМетодов");
	юТест.ПроверитьРавенство(6, ТаблицаМетодов.Количество(), "ТаблицаМетодов.Количество()");

	Метод0 = ТаблицаМетодов.Найти("ВызватьМетод", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод0, "Метод0");
	юТест.ПроверитьРавенство("ВызватьМетод", Метод0.Имя, "Метод0.Имя");
	юТест.ПроверитьРавенство(3, Метод0.КоличествоПараметров, "Метод0.КоличествоПараметров");
	юТест.ПроверитьРавенство(Истина, Метод0.ЭтоФункция, "Метод0.ЭтоФункция");

	Метод2 = ТаблицаМетодов.Найти("ПолучитьТаблицуМетодов", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод2, "Метод2");
	юТест.ПроверитьРавенство("ПолучитьТаблицуМетодов", Метод2.Имя, "Метод2.Имя");
	юТест.ПроверитьРавенство(1, Метод2.КоличествоПараметров, "Метод2.КоличествоПараметров");
	юТест.ПроверитьРавенство(Истина, Метод2.ЭтоФункция, "Метод2.ЭтоФункция");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляРазныхТипов() Экспорт
	МассивОбъектов = Новый Массив;
	МассивОбъектов.Добавить(АргументыКоманднойСтроки);
	МассивОбъектов.Добавить(Новый Массив);
	МассивОбъектов.Добавить(Новый Рефлектор);
	МассивОбъектов.Добавить(Новый ТаблицаЗначений);
	МассивОбъектов.Добавить(Новый СписокЗначений);
	МассивОбъектов.Добавить(Новый РегулярноеВыражение("а"));
	МассивОбъектов.Добавить(Новый ЗаписьXML);
	МассивОбъектов.Добавить(Новый ЧтениеXML);
	МассивОбъектов.Добавить(Консоль);
	МассивОбъектов.Добавить(Новый Файл("ыв"));
	МассивОбъектов.Добавить(Новый ГенераторСлучайныхЧисел);
	МассивОбъектов.Добавить(Новый СистемнаяИнформация);
	МассивОбъектов.Добавить(Новый ТекстовыйДокумент);
	МассивОбъектов.Добавить(Новый ЧтениеТекста);
	МассивОбъектов.Добавить(Новый ЗаписьТекста);

	Рефлектор = Новый Рефлектор;

	Для Каждого Объект Из МассивОбъектов Цикл
		ТипОбъекта = ТипЗнч(Объект);
		Попытка
			ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Объект);
		Исключение
			ИнфоОшибки = ИнформацияОбОшибке();
			текстОшибки = ПодробноеПредставлениеОшибки(ИнфоОшибки);
			
			ВызватьИсключение "Тип <"+ТипОбъекта +">: не удалось получить таблицу методов" + Символы.ПС + текстОшибки;
		КонецПопытки;

		юТест.ПроверитьРавенство(Строка(ТипЗнч(ТаблицаМетодов)), "ТаблицаЗначений", "ТаблицаМетодов "+ТипЗнч(Объект));
		юТест.ПроверитьБольше(ТаблицаМетодов.Количество(), 0, "ТаблицаМетодов.Количество()"+ТипЗнч(Объект));
	КонецЦикла;

КонецПроцедуры

Процедура СообщитьПриветМир(БулеваПеременная, Знач ЧисловаяПеременная) Экспорт
    Сообщить("Привет, Мир!");
    БулеваПеременная = Ложь;
	ЧисловаяПеременная = 7;
КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтоПараметрыИзмененныеВПроцедуреВозвращеныВМассив() Экспорт

	БулеваПеременная = Истина;
	ЧисловаяПеременная = 2;
	ПараметрыОповещения = Новый Массив;
	ПараметрыОповещения.Добавить(БулеваПеременная);
	ПараметрыОповещения.Добавить(ЧисловаяПеременная);

	Рефлектор = Новый Рефлектор;     
	Рефлектор.ВызватьМетод(ЭтотОбъект, "СообщитьПриветМир", ПараметрыОповещения);
	
	юТест.ПроверитьИстину(БулеваПеременная, "Переменная не должна поменять значение");
	юТест.ПроверитьРавенство(2, ЧисловаяПеременная, "Переменная не должна поменять значение");
	
	юТест.ПроверитьЛожь(ПараметрыОповещения[0], "Аргумент метода должен принять значение Ложь");
	юТест.ПроверитьРавенство(2, ПараметрыОповещения[1], "Аргумент метода не должен поменять значение");
	

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуСвойств() Экспорт

	Пример = ПолучитьОбъектДляПроверки("test_reflector");
	Рефлектор = Новый Рефлектор;

	ТаблицаСвойств = Рефлектор.ПолучитьТаблицуСвойств(Пример);
	юТест.ПроверитьРавенство(5, ТаблицаСвойств.Количество());

	юТест.ПроверитьРавенство("ЭкспортнаяПеременная", ТаблицаСвойств[2].Имя);
	юТест.ПроверитьРавенство("юТест", ТаблицаСвойств[0].Имя);
	юТест.ПроверитьЛожь(ТаблицаСвойств[0].Экспорт);
	юТест.ПроверитьИстину(ТаблицаСвойств[1].Экспорт);
	юТест.ПроверитьИстину(ТаблицаСвойств[2].Экспорт);
	юТест.ПроверитьИстину(ТаблицаСвойств[3].Экспорт);
	юТест.ПроверитьЛожь(ТаблицаСвойств[4].Экспорт);

	ТаблицаСвойств = Рефлектор.ПолучитьТаблицуСвойств(Рефлектор);
	юТест.ПроверитьРавенство(0, ТаблицаСвойств.Количество());

КонецПроцедуры

Процедура ТестДолжен_ПроверитьПолучитьТаблицуСвойствДляТипа() Экспорт
	
	ТекПуть = Новый Файл(ТекущийСценарий().Источник).Путь;
	ПодключитьСценарий(ТекПуть+"example-test.os", "test_export_props_type");

	Тип = Тип("test_export_props_type");

	Рефлектор = Новый Рефлектор;
	ТаблицаСвойств = Рефлектор.ПолучитьТаблицуСвойств(Тип);
	юТест.ПроверитьРавенство(5, ТаблицаСвойств.Количество());

	юТест.ПроверитьРавенство("ЭкспортнаяПеременная", ТаблицаСвойств[2].Имя);
	юТест.ПроверитьРавенство("юТест", ТаблицаСвойств[0].Имя);
	юТест.ПроверитьЛожь(ТаблицаСвойств[0].Экспорт);
	юТест.ПроверитьИстину(ТаблицаСвойств[1].Экспорт);
	юТест.ПроверитьИстину(ТаблицаСвойств[2].Экспорт);
	юТест.ПроверитьИстину(ТаблицаСвойств[3].Экспорт);
	юТест.ПроверитьЛожь(ТаблицаСвойств[4].Экспорт);

КонецПроцедуры

Функция ПолучитьОбъектДляПроверки(ИмяКласса)
	ТекПуть = Новый Файл(ТекущийСценарий().Источник).Путь;
	ПодключитьСценарий(ТекПуть+"example-test.os", ИмяКласса);
	Пример = Новый(ИмяКласса);
	Возврат Пример;
КонецФункции

Функция ФункцияСПараметрамиПоУмолчанию(Знач П1, Знач П2 = 2, Знач П3 = 3) Экспорт
	Возврат П1 + П2 + П3;
КонецФункции

Функция НовыеПараметры(Знач П1 = Неопределено, Знач П2 = Неопределено, Знач П3 = Неопределено, Знач П4 = Неопределено)

	М = Новый Массив;

	Если Не П1 = Неопределено Тогда
		М.Добавить(П1);
	КонецЕсли;

	Если Не П2 = Неопределено Тогда
		М.Добавить(П2);
	КонецЕсли;

	Если Не П3 = Неопределено Тогда
		М.Добавить(П3);
	КонецЕсли;

	Если Не П4 = Неопределено Тогда
		М.Добавить(П4);
	КонецЕсли;

	Возврат М;
КонецФункции

Функция ТестДолжен_ПроверитьВызовМетодаСПараметрамиПоУмолчанию() Экспорт

	Рефлектор = Новый Рефлектор;
	Результат = Рефлектор.ВызватьМетод(ЭтотОбъект, "ФункцияСПараметрамиПоУмолчанию", НовыеПараметры(1));
	юТест.ПроверитьРавенство(Результат, 6, "Вызов рефлектором с параметрами по-умолчанию");

	Результат = Рефлектор.ВызватьМетод(ЭтотОбъект, "ФункцияСПараметрамиПоУмолчанию", НовыеПараметры(1, 1));
	юТест.ПроверитьРавенство(Результат, 5, "Вызов рефлектором с параметрами по-умолчанию");

	Ошибка = Ложь;
	Попытка

		Результат = Рефлектор.ВызватьМетод(ЭтотОбъект, "ФункцияСПараметрамиПоУмолчанию", НовыеПараметры(1, 1, 1, 1));
		Ошибка = Истина;

	Исключение
		// Всё правильно!
	КонецПопытки;

	Если Ошибка Тогда
		юТест.ТестПровален("Вызов рефлектора с превышением параметров");
	КонецЕсли;

	Ошибка = Ложь;
	Попытка

		Результат = Рефлектор.ВызватьМетод(ЭтотОбъект, "ФункцияСПараметрамиПоУмолчанию", НовыеПараметры());
		Ошибка = Истина;

	Исключение
		// Всё правильно!
	КонецПопытки;

	Если Ошибка Тогда
		юТест.ТестПровален("Вызов рефлектора с недостаточным количеством параметров");
	КонецЕсли;

КонецФункции

Процедура ТестДолжен_ПроверитьМетодСуществуетДляТипа() Экспорт
	
	Рефлектор = Новый Рефлектор;
	ЕстьМетод = Рефлектор.МетодСуществует(Тип("HTTPОтвет"), "ПолучитьТелоКакСтроку");
	юТест.ПроверитьИстину(ЕстьМетод);
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьПолучитьТаблицуМетодовДляТипа() Экспорт
	
	Рефлектор = Новый Рефлектор;
	Таблица = Рефлектор.ПолучитьТаблицуМетодов(Тип("ДвоичныеДанные"));
	юТест.ПроверитьРавенство(3, Таблица.Количество(), "Проверка числа методов");
	
	юТест.ПроверитьНеРавенство(Неопределено, Таблица.Найти("Размер"));
	юТест.ПроверитьНеРавенство(Неопределено, Таблица.Найти("Записать"));
	юТест.ПроверитьНеРавенство(Неопределено, Таблица.Найти("ОткрытьПотокДляЧтения"));

КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтоУПараметровЕстьИмена() Экспорт
	Рефлектор = Новый Рефлектор();
	Методы = Рефлектор.ПолучитьТаблицуМетодов(ЭтотОбъект);
	МетодСПараметрами = Методы.Найти("ФункцияСПараметрамиПоУмолчанию");

	юТест.ПроверитьНеРавенство(Неопределено, МетодСПараметрами);
	Параметры = МетодСПараметрами.Параметры;

	юТест.ПроверитьРавенство("П1", Параметры[0].Имя);
	юТест.ПроверитьРавенство("П2", Параметры[1].Имя);
	юТест.ПроверитьРавенство("П3", Параметры[2].Имя);

КонецПроцедуры

Процедура ТестДолжен_ПроверитьПолучитьТаблицуСвойствДляСистемногоТипа() Экспорт
	Рефлектор = Новый Рефлектор;
	Таблица = Рефлектор.ПолучитьТаблицуСвойств(Тип("Файл"));
	юТест.ПроверитьНеРавенство(0, Таблица.Количество());
	юТест.ПроверитьНеРавенство(Неопределено, Таблица.Найти("ПолноеИмя"));
	юТест.ПроверитьНеРавенство(Неопределено, Таблица.Найти("ИмяБезРасширения"));
КонецПроцедуры

Процедура ТестДолжен_ПроверитьУстановкуПриватногоСвойства() Экспорт
	
	Рефлектор = Новый Рефлектор;
	
	Пример = ПолучитьОбъектДляПроверки("test_reflector");
	
	НовоеЗначение = Новый УникальныйИдентификатор();

	Рефлектор.УстановитьСвойство(Пример, "Яшма2", НовоеЗначение);

	юТест.Проверить(НовоеЗначение = Пример.Яшма2(), "Значения должны совпадать");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьУстановкуПубличногоСвойства() Экспорт
	
	Рефлектор = Новый Рефлектор;
	
	Пример = ПолучитьОбъектДляПроверки("test_reflector");
	
	НовоеЗначение = Новый УникальныйИдентификатор();

	Рефлектор.УстановитьСвойство(Пример, "Яшма1", НовоеЗначение);

	юТест.Проверить(НовоеЗначение = Пример.Яшма1, "Значения должны совпадать");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьПолучениеПубличногоСвойства() Экспорт
	
	Рефлектор = Новый Рефлектор;
	
	Пример = ПолучитьОбъектДляПроверки("test_reflector");
	
	НовоеЗначение = Новый УникальныйИдентификатор();

	Рефлектор.УстановитьСвойство(Пример, "Яшма1", НовоеЗначение);

	юТест.Проверить(НовоеЗначение = Рефлектор.ПолучитьСвойство(Пример, "Яшма1"), "Значения должны совпадать");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьПолучениеПриватногоСвойства() Экспорт
	
	Рефлектор = Новый Рефлектор;
	
	Пример = ПолучитьОбъектДляПроверки("test_reflector");
	
	НовоеЗначение = Новый УникальныйИдентификатор();

	Рефлектор.УстановитьСвойство(Пример, "Яшма2", НовоеЗначение);

	юТест.Проверить(НовоеЗначение = Рефлектор.ПолучитьСвойство(Пример, "Яшма2"), "Значения должны совпадать");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ПроверитьЗначенияПоУмолчанию() Экспорт
	Пример = ПолучитьОбъектДляПроверки("test_reflector");

	Рефлектор = Новый Рефлектор;
	ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Пример);

	МетодСРазнымиПараметрами = ТаблицаМетодов.Найти("МетодСРазнымиПараметрами", "Имя");
	Параметры = МетодСРазнымиПараметрами.Параметры;
	юТест.ПроверитьРавенство(Параметры[0].ЕстьЗначениеПоУмолчанию, Ложь);
	юТест.ПроверитьРавенство(Параметры[0].ЗначениеПоУмолчанию, Неопределено);
	юТест.ПроверитьРавенство(ТипЗнч(Параметры[0].ЗначениеПоУмолчанию), Тип("Неопределено"));
	юТест.ПроверитьРавенство(Параметры[1].ЕстьЗначениеПоУмолчанию, Истина);
	юТест.ПроверитьРавенство(Параметры[1].ЗначениеПоУмолчанию, Неопределено);
	юТест.ПроверитьРавенство(ТипЗнч(Параметры[1].ЗначениеПоУмолчанию), Тип("Неопределено"));
	юТест.ПроверитьРавенство(Параметры[2].ЕстьЗначениеПоУмолчанию, Истина);
	юТест.ПроверитьРавенство(Параметры[2].ЗначениеПоУмолчанию, Истина);
	юТест.ПроверитьРавенство(ТипЗнч(Параметры[2].ЗначениеПоУмолчанию), Тип("Булево"));
	юТест.ПроверитьРавенство(Параметры[3].ЕстьЗначениеПоУмолчанию, Истина);
	юТест.ПроверитьРавенство(Параметры[3].ЗначениеПоУмолчанию, 1);
	юТест.ПроверитьРавенство(ТипЗнч(Параметры[3].ЗначениеПоУмолчанию), Тип("Число"));
	юТест.ПроверитьРавенство(Параметры[4].ЕстьЗначениеПоУмолчанию, Истина);
	юТест.ПроверитьРавенство(Параметры[4].ЗначениеПоУмолчанию, "Строка");
	юТест.ПроверитьРавенство(ТипЗнч(Параметры[4].ЗначениеПоУмолчанию), Тип("Строка"));

КонецПроцедуры