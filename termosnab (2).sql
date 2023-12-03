-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 03 2023 г., 21:07
-- Версия сервера: 5.7.39
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `termosnab`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Delivery`
--

CREATE TABLE `Delivery` (
  `ID` int(11) NOT NULL,
  `Delivery_Method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Delivery`
--

INSERT INTO `Delivery` (`ID`, `Delivery_Method`, `Address`) VALUES
(1, 'Самовывоз', 'г. Челябинск, ул. Кожзаводская д2'),
(2, 'Курьер', 'ул. Куйбышева д 17');

-- --------------------------------------------------------

--
-- Структура таблицы `Feedback`
--

CREATE TABLE `Feedback` (
  `ID` int(11) NOT NULL,
  `Log_In` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Comment` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Number` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Feedback`
--

INSERT INTO `Feedback` (`ID`, `Log_In`, `Comment`, `Number`) VALUES
(1, 'uvarovlx', 'Хорошая компания, приятные доступные цены, товары качественные', 10),
(2, 'chern123', 'Очень крутая компания', 7),
(3, 'baz123', 'Быстрая доставка, низкие цены', 9),
(4, 'chern123', 'Ужас', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Manufacture`
--

CREATE TABLE `Manufacture` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Number_Director` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Manufacture`
--

INSERT INTO `Manufacture` (`ID`, `Name`, `Address`, `Number_Director`) VALUES
(1, 'Поставщик 1', 'г. Челябинск ул 45', 14896465);

-- --------------------------------------------------------

--
-- Структура таблицы `Order`
--

CREATE TABLE `Order` (
  `ID` int(11) NOT NULL,
  `ID_Product` int(11) NOT NULL,
  `ID_Delivery` int(11) NOT NULL,
  `ID_Client` int(11) NOT NULL,
  `Comment` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Order`
--

INSERT INTO `Order` (`ID`, `ID_Product`, `ID_Delivery`, `ID_Client`, `Comment`) VALUES
(8, 20, 1, 2, '0'),
(9, 47, 1, 2, '0'),
(11, 3, 1, 3, '0'),
(12, 31, 1, 3, '0'),
(13, 21, 1, 3, '0'),
(14, 21, 1, 3, '0'),
(15, 13, 1, 2, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `Product`
--

CREATE TABLE `Product` (
  `ID` int(11) NOT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Category` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `Img` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Number_Box` int(11) NOT NULL,
  `ID_Manufacture` int(11) NOT NULL,
  `ID_Provider` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Product`
--

INSERT INTO `Product` (`ID`, `Name`, `Description`, `Category`, `Price`, `Img`, `Quantity`, `Number_Box`, `ID_Manufacture`, `ID_Provider`) VALUES
(1, 'Котел ARTU S11 (АОГВ-11,6)', 'ЭКОНОМИТ: ГАЗ, ДЕНЬГИ, НЕРВЫ, НЕ ТРЕБУЕТ ЭЛЕКТРОЭНЕРГИИ, СОЗДАН С УЧЕТОМ ВСЕХ ОСОБЕННОСТЕЙ ЭКСПЛУАТАЦИИ В РОССИИ, ВЫСОКИЙ КПД', 'Котел', 28800, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/05/product1-362x6001-1-768x768.png', 112, 5, 1, 1),
(2, 'Котел Lavoro Eco LF compact', 'Котел Lavoro Eco LF compact – это современный стальной водогрейный котел, работающий в полностью автоматическом режиме, предназначенный для отопления жилых и производственных помещений а также для нагрева горяче-хозяйственной водой (ГВС). В котел встроена современная факельная пеллетная горелка. В качестве топлива используются пеллеты (дрова – резервное топливо), котел оснащен бункером со шнеком', 'Котел', 211575, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/07/1496.7501-768x768.webp', 24, 14, 1, 2),
(3, 'Котел автоматический ZOTA «Cuba»', 'Компактный пеллетный отопительный котел ZOTA Cuba (Зота Куба) с автоматической подачей топлива, автоматическим розжигом и ретортной горелкой увеличенного объёма и площади для сжигания более зольного топлива. Предназначен для систем водяного отопления помещений. Механизм подачи топлива одношнековый, шнек 133 мм. На случай отсутствия топлива в котле предусмотрена возможность установки нагревательного элемента (блока ТЭН). Класс котла: 4', 'Котел', 142900, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/12/cuba_1_7161657073830_1281658724306_8441662088938_6931662101072_8161664777738_4331668145271_98216696889331-768x768.webp', 74, 4, 1, 1),
(4, 'Котел автоматический ZOTA «Focus»', 'Компактный пеллетный отопительный котел ZOTA Focus (Зота Фокус) с автоматической подачей топлива, автоматическим розжигом и факельной горелкой с двумя автоматическими режимами самоочистки. Предназначен для систем водяного отопления помещений общей отапливаемой площадью до 220 м2. Механизм подачи топлива двухшнековый, обеспечивающий пожаробезопасность котла.', 'Котел', 139410, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/12/focus_1_2161589350364_781657004995_8501657005071_4181657005096_471658724286_1811662088929_4681662101043_5441664777703_8271668145255_32116696889081-768x768.webp', 17, 5, 1, 2),
(5, 'Котел автоматический ZOTA «Maxima» 150', 'Пеллетный отопительный котел ZOTA Maxima (Зота Максима) 150 кВт с автоматической подачей топлива, автоматическим розжигом, системой безопасности от перегрева котла и проникновения огня в бункер, ретортной горелкой. Развитие модели ZOTA Pellet Pro (Зота Пеллет Про)', 'Котел', 552600, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/12/11_7831563944641_6015641191061-768x768.webp', 11, 6, 1, 2),
(6, 'Котел автоматический ZOTA «Robot» 500-2', 'Автоматические универсальные котлы Robot – модификация автоматических котлов Maxima c бункером для топлива, расположенным сзади котла. Линейка изделий состоит из котлов мощностью 150/200/250/300/400/500/600/750 кВт. Модификации котлов обозначаются по мощности изделия с дополнительным цифровым индексом, который обозначает количество горелок (механизмов подачи). Котлы комплектуются бункерами различного объема: от 2000 л до 7500 л', 'Котел', 1071700, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/12/robot_b_4151633415262_91816334153841-768x768.webp', 3, 7, 1, 1),
(7, 'Котел автоматический ZOTA «Stahanov»', 'Котел-автомат с тонкой настройкой системы отопления и работой до 7 суток в самостоятельном режиме. Управление – электронный блок на корпусе модели (GSM-модуль – опция). Топливо: уголь фракцией до 100 мм, пеллеты (автосжигание), дрова, древесные брикеты (ручное сжигание). Альтернативное топливо: электричество (при покупке блока ТЭН 12 кВт)', 'Котел', 254610, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/12/stahanov_1_1561668145155_2316696887981-768x768.webp', 7, 4, 1, 2),
(8, 'Котел VARGAZ 11 (АОГВ-11,6)', 'АОГВ-11.6 VarGaz с энергонезависимой автоматикой создан на российском заводе в Ростовской области г. Таганрог и представляет собой совершенный аналог по всем присоединительным размерам Аппарата Отопительного Газового Водогрейного (АОГВ-11,6-3 Ростов). Надежный газовый котел VarGaz с расширенной гарантией производителя в 36 месяцев', 'Котел', 22100, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/05/vargaz1-253x6001-1-768x768.png', 85, 3, 1, 2),
(9, 'Котел газовый ЛЕМАКС PRESTIGE', 'Котлы серии Prestige изготовлены из стали в оригинальном Red-дизайне. Предназначены для отопления помещений административно-бытового назначения, коттеджей, жилых домов и квартир. Котел функционирует за счет водяного теплоносителя в условиях принудительной или естественной циркуляции. Энергонезависимые модели отлично ведут себя в местах с частыми перебоями электричества и являются приоритетным выбором для помещений с повышенными требованиями к бесперебойному отоплению.', 'Котел', 37639, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/04/yepqylzlg7n0csmtz2a8sdp40fsp9xqy1-768x768.png', 141, 2, 1, 1),
(10, 'Котел газовый Haier L1PB16-R14RC3(T)', 'Котел газовый Haier L1PB16-R14RC3(T)- имеет закрытую камеру сгорания с принудительной системой дымоудаления. Может подключаться как к раздельному (80/80), так и к коаксиальному (60/100) дымо-воздуховоду, что позволяет устанавливать его в помещениях при отсутствии стационарного дымохода.\r\nКотлы данной серии оснащены инновационным решением: первичным теплообменником, изготовленным из бескислородной меди «Oxygen-Free Copper», который отличается высокой надежностью и сегментной горелкой, которая способна работать в очень широком диапазоне мощности', 'Котел', 43758, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/01/haier-48983-1-350x3501-1-768x768.webp.webp', 19, 1, 1, 1),
(11, 'Алюминиевый радиатор STI GRAND 500/100', 'Предназначен для использования в отопительных системах жилых, общественных и промышленных зданий, индивидуальных домов, коттеджей, садовых домиков, гаражей и т.д', 'Радиатор', 8243, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/12/0046c7dfc1ab3833d7c02d3ad45cf31d1-768x768.png.webp', 75, 1, 1, 1),
(12, 'Конвектор Thermex COSMO E', 'Конвектор THERMEX Cosmo 1500E создан специально для эффективного и быстрого увеличения температуры воздуха в период межсезонья. Устойчивые ножки обеспечит возможность напольного расположения прибора, а прорезиненные колесики – удобное перемещение без ущерба для покрытия. Используя сенсорные элементы управления, вы подберете необходимую температуру и ступень мощности для экономии электричества.', 'Радиатор', 4645, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/08/9llxkkhwvdc4llygc4jth678yfht83m01-768x768.png.webp', 15, 2, 1, 2),
(13, 'Конвектор Thermex LUMMI', 'Нагревательный элемент с увеличенным количеством ребер. Монолитный ТЭН X-Prof отличается высокой прочностью и долговечностью и способствует сокращению теплопотерь при нагреве. Такой ТЭН имеет высокую эффективность работы и теплопередачу', 'Радиатор', 6830, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/08/3b759p4trr07e4xricglrd5kw3sp7pxx1-768x768.png.webp', 23, 3, 1, 2),
(14, 'Радиатор Rommer Optima 500', 'В изготовлении радиаторов Optima 500 применен метод литья под давлением. Многоступенчатое нанесение на внутренние и наружные поверхности фтор-циркониевого слоя и оксидной пленки повышает устойчивость к кратковременному воздействию химическим смесям и примесям — исключает процесс коррозии.', 'Радиатор', 1968, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/07/5df9b3fcc6d4bdd478753f0fa80c847f1-768x768.webp', 110, 4, 1, 2),
(15, 'Радиатор Rommer Plus Bm 200', 'Коллектор радиаторов выполнен полностью из коррозионностойкой стали и представляет собой сварной каркас из продольных и поперечных трубчатых элементов, который впоследствии залит под высоким давлением алюминиевым сплавом. Такая технология позволила получить изделия с КПД теплопроводности, превосходящим аналогичные показатели моно алюминиевых радиаторов', 'Радиатор', 3600, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/07/RG008UKJUQRULP_21-2-768x768.webp', 145, 5, 1, 1),
(16, 'Радиатор Rommer Profi Bm 500', 'Rommer Profi Bm 500 – идеальное сочетание практичности и надежности. Адаптирован под частные и централизованные отопительные системы закрытого типа', 'Радиатор', 2710, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/07/bc2920683da1d5b774d57670beb580751-768x768.webp', 75, 5, 1, 1),
(17, 'Радиатор алюминиевый STOUT ALPHA 350', 'Благодаря техническим и рабочим характеристикам алюминиевые радиаторы STOUT могут устанавливаться в централизованной сети при условии соответствия параметров теплоносителя требованиям паспорта и СО-153-34.20.501-2003', 'Радиатор', 2960, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/04/rg00908p329qvv1-768x768.jpg', 82, 5, 1, 2),
(18, 'Радиатор биметаллический GLOBAL Style Plus 500', 'Радиатор Style Plus имеет важную отличительную особенность: его внутренняя часть, находящаяся в непосредственном контакте с водой, выполнена полностью из стали, а наружный слой – из алюминия, который обеспечивает максимальную теплоотдачу. Биметаллические радиаторы Глобал Style Plus имеют рабочее давление до 35 атмосфер, высоконадежные силиконовые прокладки между секциями, безупречное качество окраски, больший, чем у аналогов, диаметр межколлекторной трубки', 'Радиатор', 2205, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/09/e87657374e9685a862db4a1b79d487581-768x768.webp', 82, 1, 1, 1),
(19, 'Cтанок шлифовальный дисковый (тарельчатый) СШД-1050', 'Универсальный станок ,с увеличенной мощностью, для всех видов шлифовальных работ. Электромагнитный выключатель, предотвращающий случайное включение при восстановлении напряжения', 'Сварочное оборудование', 28780, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/08/SSHD_10501-768x768.png.webp', 150, 2, 1, 2),
(20, 'Cтанок шлифовальный торельчато-ленточный', 'Универсальный станок для различных видов шлифования. Простая замена абразивного инструмента благодаря системе крепления Velcro. Удобная настройка. Компактный и производительный, неприхотливый и выносливый – он станет Вашим надежным помощником на долгие годы', 'Сварочное оборудование', 10720, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/08/SSHL_3501-768x768.png.webp', 114, 3, 1, 2),
(21, 'Аккумуляторная батарея Li-Ion, 12 В, 2 Ач, тип T7 ST7-12-2', 'Источник питания для шуруповерта ЗУБР позволит Вам работать с полной отдачей. Современные Li-Ion элементы профессионального качества гарантируют превосходные технические характеристики, надежность и результат', 'Сварочное оборудование', 1870, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/07/ST7_12_21-768x768.png.webp', 20, 1, 1, 1),
(22, 'Аккумуляторная цепная пила Huter ELS-20Li', 'Аккумуляторная цепная пила Huter ELS-20Li обеспечивает мобильность и свободу движения при работе с деревом. Это важно для работы в удаленных местах или на высоте. Она оснащена литий-ионным аккумулятором, который позволяет пилить без подключения к электросети', 'Сварочное оборудование', 4890, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/11/9744.750x01-768x768.png.webp', 25, 5, 1, 2),
(23, 'Аппарат для сварки ПВХ труб Ресанта АСПТ-1000А', 'Сварочный аппарат для пластиковых труб АСПТ-1000А Ресанта предназначен для ручной сварки в раструб полипропиленовых труб и фитингов небольших размеров. Обеспечивает надёжное диффузное соединение материала.', 'Сварочное оборудование', 1590, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/06/20038.7501-768x768.png.webp', 37, 6, 1, 1),
(24, 'Бензиновая виброплита Huter VP-35W', 'Данная модель оборудована баком для воды вы можете выполнять работы по уплотнению горячего асфальта или других липких материалов, которые достаточно трудно и неудобно обрабатывать моделями без бака. Если Вам предстоит выполнение работ по уплотнению данных материалов, залейте воду в бак', 'Сварочное оборудование', 56690, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/11/4012.750x01-768x768.webp', 1, 3, 1, 1),
(25, 'Бензиновый садовый измельчитель Huter GSH-7800', 'Huter GSH-7800 – это садовый измельчитель работающий от бензинового четырёхтактного двигателя. Аппарат подходит для измельчения травы, веток и сучьев толщиной не более 5 см. На корпусе загрузочного желоба установлен специальный ограничитель диаметра веток. Для сухой твёрдой древесины максимальный диаметр – 3 см, для свежего твёрдого дерева – 4 см, свежая мягкая древесина – 5 см', 'Сварочное оборудование', 46690, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/11/8588.750x01-768x768.png.webp', 5, 5, 1, 2),
(26, 'Бесщеточная газонокосилка, 2 АКБ (4 Ач) ГКЛ-3736-42', 'Современные технологии приходят к Вам на участок. Теперь косить траву можно со всем комфортом – без шума, без выхлопов, без проводов, без ограничений. Мощный BRUSHLESS двигатель легко справляется с травой любой жесткости и экономично расходует заряд батареи', 'Сварочное оборудование', 25503, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/07/GKL_3736_421-768x768.png.webp', 74, 8, 1, 2),
(27, 'Бесщеточная дрель-шуруповерт, 2 АКБ (2 Ач), в кейсе DB-201-22', 'Высокотехнологичный шуруповерт профессионального уровня с передовым BRUSHLESS двигателем. Высокий крутящий момент 70 Нм, надежность конструкции и отличная эргономика позволяют выполнять практически любую работу – сверление дерева сверлом Левиса, сверление металла ступенчатым сверлом, заворачивание крепежа диаметром до 12 мм, перемешивание ЛКМ и прочее без усилий с Вашей стороны и перегрузки инструмента. Комплектация с двумя батареями и быстрозарядным устройством позволяет начать работу сразу после покупки', 'Сварочное оборудование', 14160, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/07/DB_201_221-768x768.png.webp', 25, 7, 1, 1),
(28, 'Аккумуляторный электрический триммер-кусторез Huter GET-3,6H', 'Huter GET-3,6H — триммер-кусторез, работающий от литиевого аккумулятора емкостью 1,5 Ач. С помощью аккумуляторного кустореза вы сможете легко формировать кусты на дачном участке. Устройство способно справляться с ветками толщиной до 8 мм. Частота вращения двигателя составляет 1100 об/мин. Эта характеристика триммера-кустореза напрямую влияет на то, насколько легко он будет справляться с травой и ветками', 'Инструмент', 3490, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/11/4361.750x01-768x768.png.webp', 15, 2, 1, 1),
(29, 'Бензиновый садовый измельчитель Huter GSH-7800', 'Huter GSH-7800 – это садовый измельчитель работающий от бензинового четырёхтактного двигателя. Аппарат подходит для измельчения травы, веток и сучьев толщиной не более 5 см. На корпусе загрузочного желоба установлен специальный ограничитель диаметра веток. Для сухой твёрдой древесины максимальный диаметр – 3 см, для свежего твёрдого дерева – 4 см, свежая мягкая древесина – 5 см', 'Инструмент', 46660, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/11/8588.750x01-768x768.png.webp', 14, 5, 1, 1),
(30, 'Виброплита бензиновая Huter VP-90W', 'Бензиновая виброплита Huter VP-90W предназначена для уплотнения песка, гравия, битумно-гравийной смеси, каменной брусчатки и т.д. Виброплиты необходимы в строительных, ремонтных, дорожных, ландшафтных работах. Используется оборудование как при подготовке площадки, например, к укладыванию асфальта или заливке фундамента, так и в завершающей стадии работы. Плита обеспечивает необходимое уплотнение, благодаря чему конструкция не будет проседать', 'Инструмент', 56690, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/11/9733.750x01-768x768.png.webp', 145, 3, 1, 1),
(31, 'Газовый генератор HUTER DY6500LXG', 'Электрогенератор – электрическая машина, предназначенная для автономного электроснабжения. В качестве первичного двигателя используется четырёхтактный карбюраторный двигатель, топливом для которого является неэтилированный бензин. Электрогенератор предназначен для получения электроэнергии в тех местах, где отсутствует магистральное электроснабжение. Это касается, как частных домов, где генераторы могут использоваться в качестве резервного источника питания, так и различных участков работ, где нужно электропитание для оборудования и проведения работ. Электрогенераторы HUTER много лет являются лидерами на российском рынке. Генераторы отличаются высоким качеством и надёжностью', 'Инструмент', 70090, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/10/7047.750x01-768x768.png.webp', 85, 4, 1, 2),
(32, 'Газонокосилка бензиновая HUTER GLM-4.0 T', 'HUTER GLM-4.0 T – это газонокосилка, которая работает на бензиновом двигателе. По сравнению с электрическими моделями, бензиновые газонокосилки быстрее справляются со стрижкой больших площадей растительности. Высокая мощность двигателя и ножи, выполненные из прочной качественной стали, позволяют быстро справиться даже с густой и высокой травой', 'Инструмент', 20790, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/10/5351.750x01-768x768.png.webp', 74, 5, 1, 2),
(33, 'Дровокол электрический HUTER HLS-5500H', 'Принцип работы основывается на применении гидравлического толкателя. Усилие раскалывания составляет 5,5 тонн, поэтому устройство отлично справляется даже с расщеплением бревен твердых пород дерева, поленец с большим количеством сучков. Высокую производительность обеспечивает асинхронный электрический двигатель мощностью 3,3 кВт. Мощный двигатель хорошо выдерживает большую нагрузку. Дровокол горизонтального типа подходит для расколки бревен в диаметре до 30 см и длиной до 52 см. Стоит учесть, что максимальный ход толкателя составляет 360 мм, поэтому устройство не подходит для колки бревен длиной менее 16 см', 'Инструмент', 30690, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/11/3994.750x01-768x768.png.webp', 35, 6, 1, 2),
(34, 'Клапан обратный PPRC MeerPlast', 'Клапан обратный PPRC MeerPlast', 'Трубопровод', 135, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/05/klapan1-768x768.jpg', 450, 1, 1, 2),
(35, 'Коллектор MeerPlast 32х20 (4 выхода) с воздухоотв.', 'Применяется в системах отопления, холодного и горячего водоснабжения а также при установке теплого пола. Коллектор ППР служит для параллельного подсоединения распределительных коллекторов отопления к одному источнику', 'Трубопровод', 538, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/05/kollektor_krasnyy_removebg_preview1-768x768.jpg', 152, 2, 1, 2),
(36, 'Компенсатор фланцевый 125 (10/16 атм.)', 'Резиновый компенсатор применяется для снижения вибраций, передаваемых по трубопроводам от различных агрегатов, а также для создания надежных уплотнений в трубопроводах различных инженерных систем. Рабочий элемент резинового компенсатора располагается посередине между стальными фланцами и имеет многослойную структуру, состоящую из наружного слоя, внутреннего слоя и армированного каркаса', 'Трубопровод', 4392, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/05/rezinovyy_kompensator1-768x768.jpg', 752, 3, 1, 1),
(37, 'Комплект для смесителя настенный PPRC MeerPlast 20х½', 'Комплект для смесителя настенный', 'Трубопровод', 136, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/05/kompekt_dlya_smesitelya_nastennyy1-768x768.jpg', 652, 4, 1, 1),
(38, 'Комплект сварочного оборудования MeerPlast 20-32 (CA-028-32M)', 'Позволяет соединить полипропиленовые трубы и фитинги, диаметром 20-32 мм. Конструкция предусматривает использование одновременно двух пар насадок', 'Трубопровод', 1246, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/05/komplekt_svarochnogo_oborudovaniya_20_32_ca_028_32m_vneshniy_vid1-768x768.jpg', 721, 5, 1, 2),
(39, 'Кран PPRC MeerPlast прямой НГ 20x½', 'Шаровый кран PPRC 20х1/2 с накидной гайкой - производится MeerPlast. Шаровый кран используется для периодического полного прекращения потока воды в системах', 'Трубопровод', 320, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/05/kran_pprc_pryamoy_ng1-768x768.jpg', 342, 1, 1, 1),
(40, 'Муфта соединительная переходная STOUT', 'Слабое место в системе прокладки трубопровода — точки соединения отрезков трубы. Именно в них чаще всего возникают протечки. Чтобы свести вероятность нарушения герметичности к минимуму, разработаны аксиальные фитинги. По сути, это латунные соединительные детали, создающие неразборное прочное соединение. Их надёжность настолько высокая, что модули используются для скрытого трубопровода. И даже внутри бетонных конструкций', 'Трубопровод', 241, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/04/rg008p0u5mc1ss1-768x768.jpg', 125, 2, 1, 2),
(41, 'Гофрированная труба TN-15A (Без оплётки) Hydrosta', 'Гофрированная труба TN-15A (Без оплётки) Hydrosta. Тип: Неотожжённая. Рулон: 50 м. Стоимость за 1 м.Трубопровод нержавеющий гофрированный', 'Трубопровод', 166, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2023/09/tn1-768x768.png.webp', 725, 3, 1, 2),
(42, 'Ножницы для пластиковых труб до 63мм (усиленные) MeerPlast', 'Ножницы для пластиковых труб до 63мм (усиленные) MeerPlast предназначены для резки пластиковых труб,а также плинтусов, профилей, резиновых шлангов, поливинилхлоридных галтелей (фигурная планка, рейка, которая закрывает стыки в углах мебели) и т. п. Трапециевидная форма рабочего ножа, две режущие кромки. Высококачественная инструментальная сталь. Усовершенствованная система храпового механизма. Обрезиненные рукоятки', 'Трубопровод', 4210, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/05/TT0000161311-768x768.jpg', 724, 5, 1, 2),
(43, 'Переход концентрический стальной 108*4-76*3.5', 'Соединительная деталь, которую используют при строительстве трубопроводных систем различного назначения. Он имеет форму конуса и, в отличие от эксцентрических изделий, применяются для соединения труб разного диаметра на горизонтальных участках', 'Трубопровод', 301, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/05/perekhod1-2-768x768.jpg', 312, 7, 1, 1),
(44, 'Горелка газовая OLYMPIA LTG-10-1R', 'Горелки “OLYMPIA” (Юж.Корея) являются автоматическими воздуходувными и используют газовое топливо. Такие модели надёжны, просты в монтаже. В комплект входят газовые электромагнитные клапаны, фильтры (произв. Италия) и реле давления газа DANGS(Германия), HONEYWELL (Нидерланды). Контроллер и блок управления обеспечивают полный цикл работы', 'Горелки надувные', 148295, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/11/gorelka_ltg-10-500x5001-1-768x768.webp', 327, 1, 1, 2),
(45, 'Горелка газовая OLYMPIA LTG-100', 'Котел Олимпия (Olympia) имеют надежную систему автоматики, поддерживающую температуру котловой воды и температуру в помещении в соответствии с заданными параметрами. Это позволяет избегать резких колебаний температуры в отапливаемом помещении при колебании погодных условий. Оборудованы несколькими степенями защиты', 'Горелки надувные', 82400, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/11/05b71085f086e33c07ca1a46384aab3dc7b9dadf1-768x768.png.webp', 124, 2, 1, 2),
(46, 'Горелка газовая OLYMPIA OHG-2-1R', 'Автоматические котлы Олимпия (Olympia) предназначены для отопления и горячего водоснабжения жилых, производственных и складских помещений. Диапазон тепловой мощности газового котла Олимпия (Olympia) от 10,000 Ккал/час до 600,000 Ккал/час', 'Горелки надувные', 48810, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/11/gorelka_ong-21-768x768.webp', 321, 3, 1, 1),
(47, 'Горелка дизельная OLYMPIA TK-2-1R', 'В горелках «OLYMPIA» на дизельном топливе используется турбовентилятор с шестеренчатым насосом. Компания «OLYMPIA» создала уникальную головку горелки, обеспечивающую идеальную эффективность горения. Шарнирная установка головки обеспечивает легкость обслуживания. Горелка имеет встроенный, а не отдельный турбовентилятор', 'Горелки надувные', 42250, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/11/6f000983c2a0addac0ddc94ebeb2c899fa513c061-768x768.webp', 450, 4, 1, 2),
(48, 'Горелка дизельная OLYMPIA LT-30T', 'Горелки Olympia LT дизельные являются автоматическими воздуходувными. Сжигают дизельное топливо. На горелках установлено 1 и 2-х ступенчатое и модулируемое регулирование. Горелки надёжны, просты в монтаже, эксплуатации и обслуживании', 'Горелки надувные', 103645, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_768/https://xn--174-5cdfw3ciisnh.xn--p1ai/wp-content/uploads/2022/11/5d56f5331f0589797987951-768x768.webp', 150, 5, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Provider`
--

CREATE TABLE `Provider` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Number_Director` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Provider`
--

INSERT INTO `Provider` (`ID`, `Name`, `Address`, `Number_Director`) VALUES
(1, 'Производитель 1', 'г. Москва, ул. Центральная 58 эт. 5', 8451272),
(2, 'Производитель 2', 'г. Челябинск, ул. Ленина 18', 8458496);

-- --------------------------------------------------------

--
-- Структура таблицы `User`
--

CREATE TABLE `User` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Log_In` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Full_name` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `Email` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Bank_card` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `User`
--

INSERT INTO `User` (`ID`, `Name`, `Log_In`, `Password`, `Full_name`, `Number`, `Email`, `Bank_card`) VALUES
(1, 'Александр', 'sasha123', '$2y$10$bIb0c1avuTFDZjIlymBNSueN7mgWwHSjKXHEPbFi0/9UHNKZmBOL6', 'Вилцинский Анатольевич', 89165, 'sasha123@mail.com', 1111111111),
(2, 'Лена', 'lena123', '$2y$10$fkHjxY2gdKPNPe.YtOPmOOgTO36MdV7iQIkSMm0j.SFjuO/965YWC', 'Мисник Андреевна', 876543, 'lena123@mail.com', 23654363),
(3, 'Анастасия', 'nastya123', '$2y$10$TdSvIQ7fOhvb4seyqx0mje7IbSBbHlljvhaozMF4hWlAogYIqDGUm', 'Вильгаук Андреевна', 56362, 'nastya123@mail.com', 3262);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Delivery`
--
ALTER TABLE `Delivery`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Feedback`
--
ALTER TABLE `Feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Manufacture`
--
ALTER TABLE `Manufacture`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Order`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Client` (`ID_Client`),
  ADD KEY `ID_Delivery` (`ID_Delivery`),
  ADD KEY `ID_Product` (`ID_Product`);

--
-- Индексы таблицы `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Manufacture` (`ID_Manufacture`),
  ADD KEY `ID_Provider` (`ID_Provider`);

--
-- Индексы таблицы `Provider`
--
ALTER TABLE `Provider`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Delivery`
--
ALTER TABLE `Delivery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Feedback`
--
ALTER TABLE `Feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Manufacture`
--
ALTER TABLE `Manufacture`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Order`
--
ALTER TABLE `Order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `Product`
--
ALTER TABLE `Product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `Provider`
--
ALTER TABLE `Provider`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `User`
--
ALTER TABLE `User`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Order`
--
ALTER TABLE `Order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`ID_Client`) REFERENCES `User` (`ID`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`ID_Delivery`) REFERENCES `Delivery` (`ID`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`ID_Product`) REFERENCES `Product` (`ID`);

--
-- Ограничения внешнего ключа таблицы `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`ID_Manufacture`) REFERENCES `Manufacture` (`ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`ID_Provider`) REFERENCES `Provider` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;