Перем ЮнитТест;

#Область ОбработчикиСобытийМодуля

Функция ПолучитьСписокТестов(МенеджерТестирования) Экспорт
	
	ЮнитТест = МенеджерТестирования;

	СписокТестов = Новый Массив;
	СписокТестов.Добавить("ТестКонструктор");
	СписокТестов.Добавить("TestConstructor");
	СписокТестов.Добавить("ТестЗначение");
	СписокТестов.Добавить("ТестЛексическоеЗначение");
	СписокТестов.Добавить("ТестОпределениеПростогоТипа");

	Возврат СписокТестов;

КонецФункции

#КонецОбласти

#Область ОбработчикиТестирования

Процедура ТестКонструктор() Экспорт
	
	Фасет = Новый ФасетОбщегоКоличестваРазрядовXS;
	
	ЮнитТест.ПроверитьРавенство(ТипЗнч(Фасет), Тип("ФасетОбщегоКоличестваРазрядовXS"));
	ЮнитТест.ПроверитьРавенство(Фасет.ТипКомпоненты, ТипКомпонентыXS.ФасетОбщегоКоличестваРазрядов);

КонецПроцедуры

Процедура TestConstructor() Экспорт

	Facet = New XSTotalDigitsFacet;
	
	ЮнитТест.ПроверитьРавенство(ТипЗнч(Facet), Тип("XSTotalDigitsFacet"));
	ЮнитТест.ПроверитьРавенство(Facet.ComponentType, XSComponentType.TotalDigitsFacet);

КонецПроцедуры

Процедура ТестЗначение() Экспорт

	Фасет = Новый ФасетОбщегоКоличестваРазрядовXS;
	Фасет.Значение = 5;

	ЮнитТест.ПроверитьРавенство(Фасет.Значение, 5);
	ЮнитТест.ПроверитьРавенство(Фасет.ЛексическоеЗначение, "5");

КонецПроцедуры

Процедура ТестЛексическоеЗначение() Экспорт

	Фасет = Новый ФасетОбщегоКоличестваРазрядовXS;
	Фасет.ЛексическоеЗначение = "5";

	ЮнитТест.ПроверитьРавенство(Фасет.ЛексическоеЗначение, "5");
	ЮнитТест.ПроверитьРавенство(Фасет.Значение, 5);

КонецПроцедуры

Процедура ТестОпределениеПростогоТипа() Экспорт

	Фасет = Новый ФасетОбщегоКоличестваРазрядовXS;
	Фасет.ЛексическоеЗначение = "5";

	ОпределениеТипа = Новый ОпределениеПростогоТипаXS;
	ОпределениеТипа.Вариант = ВариантПростогоТипаXS.Атомарная;
	ОпределениеТипа.Фасеты.Добавить(Фасет);

	ЮнитТест.ПроверитьРавенство(Фасет.Контейнер, ОпределениеТипа);
	ЮнитТест.ПроверитьРавенство(Фасет.ОпределениеПростогоТипа, ОпределениеТипа);

КонецПроцедуры

#КонецОбласти