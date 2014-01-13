RomanPushkin-FORTS-Info
=======================
FORTS (Futures &amp; Options on RTS) Info Indicator for Metatrader 5

(русская версия ниже)

![forts-info-image](https://f.cloud.github.com/assets/1477672/1868805/2f1dcc2c-7871-11e3-859f-084fb7a78979.png)

What is it? Indicator for Metatrader 5 written with MQL5. This indicator displays the most important information for the current ticker:

* Ticker name
* Clearing price
* Last price
* % change (comparing to latest "market close")
* Session maximm price limit
* Session minimum price limit
* Margin
* Session Interest
* Session Turnover
* Session Buy Orders Volume
* Session Sell Orders Volume
* Time when information has been updated (current server time)

How to install
--------------

* Create a directory "RomanPushkin" on your hard drive at C:\Users\\__YOUR_USERNAME__\AppData\Roaming\MetaQuotes\Terminal\\__LONG_ID_HERE__\MQL5\Indicators\ 

* Copy indicator (RomanPushkin-FORTS-Info.mq5) to C:\Users\\__YOUR_USERNAME__\AppData\Roaming\MetaQuotes\Terminal\\__LONG_ID_HERE__\MQL5\Indicators\RomanPushkin\

* Add indicator by dragging it from your Navigator panel:

![romanpushkin-forts-info-add](https://f.cloud.github.com/assets/1477672/1900360/02d59504-7c50-11e3-8d17-ae27040c3ab7.gif)


See also
---------

* [RomanPushkin-Daily-Grid] - displays vertical line at the beginning of the day.
* [RomanPushkin-PriceGrid] - draws horizontal lines for round price numbers.
* [RomanPushkin-Hourly-Grid] - displays vertical lines at the beginning of each hour.

License
-------

MIT

По-русски (Russian version)
===========================

Индикатор для вывода основной информации по тикеру. Предназначен для использования на рынке ФОРТС. Автор идеи - Александр Резвяков. В то время, как в терминалах QUIK довольно просто вывести основную информацию, в удобном терминале Metatrader 5 такой возможности нет, поэтому пришлось написать этот индикатор.

Индикатор выводит следующую информацию:

* Название тикера
* Котировка клиринга
* Последняя цена
* % изменения к закрытию
* Максимальная цена (макс.лимит после которого увеличится Г.О.)
* Минимальная цена (мин.лимит)
* Г.О. (гарантийное обеспечение, в рублях)
* Количество открытых позиций
* Оборот
* Общий спрос
* Общее предложение
* Время изменения информации (текущее время сервера)

Установка
---------

* Создайте директорию "RomanPushkin" на вашем жестком диске C:\Users\\__ВАШЕ\_ИМЯ\_ПОЛЬЗОВАТЕЛЯ__\AppData\Roaming\MetaQuotes\Terminal\\__ДЛИННЫЙ_ИДЕНТИФИКАТОР__\MQL5\Indicators\ 
* Скопируйте исходный код индикатора (файл RomanPushkin-FORTS-Info.mq5) в C:\Users\\__ВАШЕ\_ИМЯ\_ПОЛЬЗОВАТЕЛЯ__\AppData\Roaming\MetaQuotes\Terminal\\__ДЛИННЫЙ_ИДЕНТИФИКАТОР__\MQL5\Indicators\RomanPushkin\

* Перетащите индикатор из панели "Навигатор" на ваш график:

![romanpushkin-forts-info-add](https://f.cloud.github.com/assets/1477672/1900360/02d59504-7c50-11e3-8d17-ae27040c3ab7.gif)


См.также
--------

* [RomanPushkin-Hourly-Grid] - рисует горизонтальные линии в начале каждого часа
* [RomanPushkin-Daily-Grid] - рисует линии в начале каждого дня
* [RomanPushkin-PriceGrid]- рисует горизонтальную сетку на основе округленных цен

Лицензия
--------

MIT

[RomanPushkin-Hourly-Grid]:https://github.com/ro31337/RomanPushkin-HourlyGrid
[RomanPushkin-Daily-Grid]:https://github.com/ro31337/RomanPushkin-DailyGrid
[RomanPushkin-PriceGrid]:https://github.com/ro31337/RomanPushkin-PriceGrid
