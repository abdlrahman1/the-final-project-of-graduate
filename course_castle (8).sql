-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 01:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_castle`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_pro` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subheading` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `subheading2` varchar(255) DEFAULT NULL,
  `content2` text DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `subheading3` varchar(255) DEFAULT NULL,
  `content3` text DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `subheading4` varchar(255) DEFAULT NULL,
  `content4` text DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `subheading5` varchar(255) DEFAULT NULL,
  `content5` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `admin_id`, `admin_name`, `admin_pro`, `title`, `subheading`, `img_title`, `article`, `subheading2`, `content2`, `img2`, `subheading3`, `content3`, `img3`, `subheading4`, `content4`, `img4`, `subheading5`, `content5`, `img5`, `create_date`) VALUES
(82, 27, 'abdlrahman magdy', 'logo.png', 'أفضل 5 محررات لكتابة الأكواد البرمجية على الهاتف', 'أفضل 5 محررات لكتابة الأكواد البرمجية على الهاتف', 'www.albashmoparmeg (3).png', ' فى أوقات كتيرة بنبقى محتاجين نتمرن أو نكتب أكواد برمجة ومش معانا غير هاتف! عشان كده فى المقالة دى هشارك معاكم أفضل 5 محررات لكتابة الأكواد البرمجية على الهاتف', ' Codeanywhere', ' هو محرر لنصوص البرمجة تم تصميمه واعداده ليكون خفيف وسريع في الاستخدام ومناسب للموبايل وبيسمحلك الاتصال بحساب\r\n\r\nFTP و  dropbox و Github والتعامل بسهولة مع المجلدات والملفات.', '', 'Anwriter', ' هذا التطبيق بيساعدك في كتابة اكواد البرمجة بسهولة وبيوفر الدعم للاكمال التلقائي لـ html و CSS javascript و php و sql وبيوفر دعم للاصدارات الجديدة لـ HTML5 و CSS3 و Jquery ويدعم الـ FTP اللي عن طريقه ممكن تنزل ملفات من خادم FTP وارسال الملفات الي الخادم ايضًا.\r\n\r\nوبيسمحلك التطبيق برضو بمعاينة صفحات الويب داخل التطبيق بسرعة وبسهولة، مش محتاج تفتح متصفح عشان تعمل معاينة للكود.', '', 'Quick edit', ' هو محرر نصوص سريع ومستقر وكامل المميزات لأجهزة الأندرويد وأداءها عالي والاستجابة كويسة لو قارنته بباقي المحررات الموجودة علي Google play، وتقدر تستخدمه كمحرر نص أو محرر للتعليمات البرمجية .\r\n\r\nوبيسمحلك التطبيق بالوصول الي الملفات من مجموعة الملفات اللي ف', '', 'Dcoder', ' هو بيئة تطوير متكاملة IDE أيضًا مصمم مخصوص لكتابة أوامر البرمجة عن طريق الهاتف، وفيه كل الادوات اللي هتحتاجها لكتابة الاكواد، وفيه Format للكود، والـ output للكود في نفس الشاشة يعني تكتب الاكواد هتلاقي نتيجة الكود تحتها،\r\n\r\nلكن اللي بيفرق التطبيق ده علي ', '', '2023-03-02 00:55:13'),
(83, 27, 'abdlrahman magdy', 'logo.png', 'نصائح لتعلم البرمجه', '5 نصائح لتعلم البرمجه', 'www.albashmoparmeg (5).png', ' من الأخطاء الشائعة اللى بيقع فيها أى شخص مبتدأ فى تعلم البرمجة هى تخطي الأساسيات، ودا أكبر خطأ ينفع تنشأ عمارة بدون ما تبنى الأساسيات بالأول!\r\n\r\n \r\n\r\nنفس الطريقة فى البرمجة، هناك أشخاص عند دخولها فى تعلم لغة برمجة معينة تتخطى أول فصلين تلاتة وتبدأ من الثالث ، لا ينفع هذا أبدًا وخطأ! لكى تكون قادر على فهم المفاهيم المتقدمة للبرمجة، لازم تكون فاهم أساسيات البرمجة كويس جدًا وإلا هترتكب خطأ، وبعد ما تخلص جزء كبير من تعلم اللغة وتوصل لمرحلة معينة هترجع للأساسيات مرة أخرى لأن مستحيل تفهم نقاط متقدمة فى البرمجة بدون تعلم الأساسيات!\r\n\r\n \r\n\r\nالأساسيات عبارة عن هياكل البيانات وهياكل التحكم والمتغييرات والأدوات وهكذا، حاول تختار لغة برمجة واحده فقط وتركز عليها وإتعلم كل أساسيتها الأول وأكيد هتوفر وقت كبير جدًا وهتتعلم أى لغة برمجة بسرعة.', 'تعلم عن طريق العمل والممارسة وليس مجرد القراءة', ' خطأ شائع يقوم به المبتدئون أثناء تعلم البرمجة هو مجرد قراءة كتاب أو النظر في التعليمات البرمجية كمرور الكرام ، من السهل القراءة عن الـ loop والـ array والـ Variables والحصول على كل الأشياء في رأسك ولكن البرمجة الفعلية لا تعمل بهذه الطريقة!\r\n\r\nلازم تجعل ي', '', 'كَود بإيدك', ' من أهم النصائح، أنت كمبتدىء فى تعلم البرمجة، ستفكر في سبب وجودك في البرمجة! هتأخذ وقتًا طويلاً ، ولا يمكنني تشغيل وفحص الكود الخاص بي على الورق وحاجات أخرى كثيرة!\r\n\r\n \r\n\r\nلكن أول ما تبدأ بكتابة الأكود بيديك كل الكلام السابق هيروح نهائيًا من عقلك لأن أنت لما تبدأ تكتب الأكواد بإيدك بيعمل نوع من الدمج بين عقلك وإيدك وحواسك عمومًا فبالتالى هتساعدك هذه النقطة فى فهم الكود كويس جدًا وفى الوقت هذا أنت بتعمل إتصال أعمق فى العقل!', '', 'شارك + ناقش + عَلم + اطلب المساعدة', ' يعد التدريس أحد أفضل الطرق لفهم البرمجة بسهولة وسرعة، التعليم لشخص ما ، ومشاركة معرفتك ، وإجراء مناقشات مع المبرمجين الآخرين سيجعلك مبرمجًا أفضل بسرعة.\r\n\r\n \r\n\r\nالتدريس لشخص ما هو تعليم نفسك أيضًا ، لذلك إذا كنت قادرًا على التدريس لشخص ما يعني أنك تفهم حق', '', 'استخدام الـ Online Resources', ' هناك الكثير من الـ Resources المتاحة عبر الإنترنت يمكنك الحصول على المساعدة من هذه الـ Resources عبر الإنترنت وبدء رحلة البرمجة الخاصة بك.\r\n\r\n \r\n\r\nيمكنك الاشتراك في قنوات اليوتيوب أو تجربة معسكرات التدريب على البرمجة لتعلم البرمجة بسرعة وفعالية. Albashmo', '', '2023-03-02 01:08:00'),
(85, 27, 'abdlrahman magdy', 'logo.png', 'نصائح مهمه جدا لكتابه كود افضل', 'افضل النصائح لكتابه كود افضل', 'code-albashmoparmeg (1).png', ' نصائح لكتابة كود أفضل! اكيد سألت نفسك فى يوم من الأيام كيفية جعل كودى أنظف واحسن وقابل للفهم والقراءة؟ للإجابة على السؤال السابق إتبع هذه النصائح.', 'كتابة التعليقات الجيدة', 'من الأشياء المهمة جدًا جدًا هى كتابة التعليقات فى الكود، على سبيل المثال تجد مبرمج مكود أكثر من 1000 سطر برمجى ولا يوجد به تعليق واحد يوضح عمل هذا الكود!\n\nهذا المبرمج ممكن نسمية المبرمج العقيم أو المعقد لأنه لا يقوم بتوضيح لنفسه وللمطور الذى سيطور على هذا الكود فيما بعد! على سبيل المثال ماذا تفعل هذه الدالة؟ وفيما تسخدم هذه الدالة؟ ..إلخ.\n\nالمبرمج المحترف يهتم دائمًا بكتابة التعليقات التوضيحية على كل كود لتوضيح الكود الخاص به وجعله أفضل دائمًا!', '', 'استخدام معايير كتابة الكود', 'كود جيد عادًه ما يتبع بعض المعايير لجعله مناسب لمعايير كتابة الكود البرمجى بنسبة 100%. وكتابتك لكود متابع لمعايير برمجية يسهل على الأشخاص الذين يقرؤن أو يعدلون على الكود بعد ذلك!\n\n ', '', ' إعادة تشكيل كودك', 'أقصد بإعادة تشكيل كودك أن تقوم بإعادة النظر على كل سطر برمجى قمت بكتابتة. لتتأكد بأنه سليم 100% وخالى من الأخطاء تمامًا، لأنك ربما تكون إتسرعت فى الكتابة فنسيت تكتب حرف أو علامة ترقيم أو أى شىء أخر! فالبتالى هيسبب مشاكل توقف عمل مشروعك أو تطبيقك.\n\nفيجب عليك بعد الانتهاء من كتابة الكود تقوم بعمل مراجعة سريعة عليه للتأكد من صحة الكود.', '', 'حذف الكود الغير ضرورى', 'هذه العادة السيئة هي التي كنت أواجهها من قبل! عادة ما يحدث مثل هذه الحالة: أريد إصلاح أو تحسين جزء من التعليمات البرمجية لذلك أعلق عليه (أهمشة بالكامل) وأعد كتابة أسفله مباشرة التعليمات الجديدة – وعلى الرغم من أن التعليمات الجديدة تعمل ، إلا أنني أحتفظ بالكود القديم!\n\nبفضل الله عالجة هذه العادة الأن، ويجب عليك انت ايضًا معالجتها عن طريق حذف الأكواد التى لا تريدها فى مشروعك ولا تعمل وانت لا تحتاجها فى عمل شىء معين.\n\n ', '', '2023-03-02 01:22:34'),
(86, 27, 'abdlrahman magdy', 'logo.png', 'مشاريع تخرج برمجية أقترحها (خذها في الحسبان واختر ما يناسبك)', 'بعض مشاريع التخرج التي أراها مفيدة ولكنها ليست براقة', 'GEN-Hooijberg-Future-Team-Leadership-1290x860-1.png', ' هناك مشاريع (مبهرة) وهناك مشاريع عملية أكثر.. أنا أحب النوع الثاني والذي أظن أنه مفيد أكثر.. رغم أنها أقل (إبداعية) وفي الأخير الأمر إليك ولك حرية الاختيار ولكن أريد أن أريك أفكارا متنوعة.\r\n\r\nهذه المشاريع التي أظن أنها ستفيدك بعد التخرج وأنها ستعجب صاحب العمل، والتي ستعلمك كيفية عمل مشروع يمكنك بيعه أو أنه مفيد للآخرين مباشرة.\r\n\r\nأتمتمة نظام ورقي أيًا كان. سواء كان ذلك جامعة، سوبرماركت، مؤسسة، معهد، عيادة.. إلخ.\r\n\r\nبرامج مخصصة للعمل التجاري المؤسساتي. مثل:\r\n\r\nنظام نقطة مبيعات (point of sale)\r\n\r\nتطبيق إدارة التذاكر (ticket management app)\r\n\r\nنظام تتبع العلل (Issue tracking system / bug tracking system)\r\n\r\nنظام مخزن إلكتروني (Online store)\r\n\r\nنظام إدارة الموارد البشرية (HR Management System)\r\n\r\nنظام حجوزات (Reservation Software)\r\n\r\nابحث عن مشاريع مفتوحة المصدر من هذه الأمثلة التي ذكرتها وستجد الكثير، نزلها وحلّل مكوناتها واعمل لها هندسة عكسية بحيث تستطيع بناء مشروعك بناء على هذه المشاريع المفتوحة المصدر بالطريقة المناسبة، ابن مهاراتك التقنية حتى تصل إلى المستوى الذي يمكنك من بنائه بنفسك. ستجد نقصًا فادحا في بعض الأمور وستجد أنك جيد في بعض الجوانب. حاول أن يكون مشروعك قابلا للبيع بعد التخرج فهذا سيكون أكبر مسوّق لك إذا أردت العمل في شركة أو يمكنك تطويره لتأسيس عمل تجاري مبني عليه. سيكون معرض عمل جيّد يفهمه ويقدره الجميع.\r\n\r\nبالنسبة للغات البرمج فهي بحسب مشروعك وستجد أمثلة عليها بالمشاريع المفتوحة المصدر التي ستساعدك.\r\n\r\nنصيحة هامة: لا تبحث عن آخر لغة أو تقنية ظهرت في عالم البرمجة، لن تجد مجتمعا يساعدك فيها بل اختر اللغات والبرمجيات التي أثبت الزمن رسوخها ولها مجتمع قوي.\r\n\r\nنصيحة أخرى: لا أنصحك بالتقنيات الهجينة، مثل تلك التي تعمل بتطبيقات آيفون وأندرويد، لأن مجتمعاتها ضعيفة ومشاكلها لا تنتهي.\r\n\r\nوفي الأخير، تابع هذا الموقع (Product Hunt) فقد يلهمك ببعض الأفكار.', '', ' ', '', '', ' ', '', '', ' ', '', '', ' ', '', '2023-03-02 01:24:45'),
(87, 27, 'abdlrahman magdy', 'logo.png', 'ماذا تحتاج قبل البدأ في برمجه تطبيقات الايفون', 'تعرف على مسار مبرمج تطبيقات الأيفون بالكامل.', 'scooter-7770871_960_720.png', ' لسلام عليكم ورحمة الله وبركاته، إزيكوا يا programmers ؟ ناس كتير عايزة تدخل مجال برمجة تطبيقات الأيفون، لكن مش عارفة إيه الحاجات اللى مفروض تعملها قبل ما تبدأ؟ وأنا فى المقالة دى عشان أقولك كل حاجه أنت محتاجها عشان تدخل عالم برمجة تطبيقات الأيفون.', 'جهاز MAC', 'دى أول حاجه أنت محتاجها “جهاز ماكنتوش” دى حاجه أساسية لمبرمج أو مبرمج تطبيقات الأيفون، متقدرش تعمل أى حاجه أو تكتب سطر برمجى واحد من غيره، أنت هتقولى دلوقت ما أنا ممكن أنزل نظام ماكنتوش على جهازى الويندوز عن طريق الأنظمة الوهمية virtual machines، عادى مفيش مشكلة –  لكن المشكلة فى حاجه واحده إنك مش هتعرف تشتغل براحتك والجهاز هيهنج منك لأنك دلوقت مشغل نظامين على جهاز واحد فأكيد الجهاز مش هيستحمل وهيهنج، فالأفضل إنك تشترى جهاز mac لو مش معاك.', '', ' تنشأ حساب ليك على Apple developer', 'أى شخص ممكن يسجل عادى جدًا مش لازم تدفع فلوس عشان تسجل كمطور عند شركة Apple، عن طريق تسجيلك عند أبل كمطور بتديك صلاحية إنك تنزل برنامج Xcode اللى هنتكلم عليه فى النقطة الجايه، وبتسمحلك إنك توصل للوثائق والموارد التقنية وحاجات كتير جدًا.\n\n', '', ' تحميل برنامج Xcode', 'برنامج Xcode هى الأداة الوحيده اللى محتاج تنزلها، وهو بيئة تطوير متكاملة IDE بتوفرها apple ليك، هذا البرنامج بيوفر ليك كل حاجه أنت محتاجها عشان تطور تطبيقات الأيفون من محرر واجهة مستخدم UI وأدوات تصحيح الأخطاء وحاجات تانية كتير.', '', '', ' ', '', '2023-03-02 01:28:41'),
(88, 27, 'abdlrahman magdy', 'logo.png', 'كل مايجب معرفته عن ال API', 'غالبًا ما يعلن نظام التشغيل ومتصفح الويب وتحديثات التطبيقات عن واجهات برمجة تطبيقات جديدة للمطورين. ولكن ما هو API؟', 'www.albashmoparmeg (6).png', ' مصطلح API هو اختصار ل (Application Programming Language ) ، وهو يشير إلى “واجهة برمجة التطبيقات”.\r\n\r\n ', 'كيف يسهل ال API على المطورين؟', 'لنفترض أنك تريد تطوير تطبيق لجهاز iPhone، يوفر نظام التشغيل iOS الخاص بـ Apple عددًا كبيرًا من واجهات برمجة التطبيقات – كما يفعل كل نظام تشغيل آخر – لتسهيل ذلك عليك.\n\nإذا كنت ترغب في تضمين متصفح ويب لإظهار صفحة أو أكثر من صفحات الويب ، على سبيل المثال ، لا يتعين عليك برمجة متصفح الويب الخاص بك من البداية فقط من أجل تطبيقك. يمكنك استخدام API لتضمين كائن مستعرض Safari في التطبيق الخاص بك\n\n، وهكذا الحال فى نظام Android.\n\n \n\nإذا كنت ترغب في التقاط الصور أو الفيديو من كاميرا Android ، فلن تحتاج إلى كتابة واجهة الكاميرا الخاصة بك، يمكنك استخدام واجهة برمجة تطبيقات الكاميرا لتضمين كاميرا Android المدمجة في تطبيقك، إذا لم تكن واجهات برمجة التطبيقات موجودة لتسهيل ذلك ، فسيتعين على مطوري التطبيقات إنشاء برنامج الكاميرا الخاص بهم وتفسير مدخلات أجهزة الكاميرا ، لكن مطوري نظام التشغيل من Android قاموا بكل هذا العمل الشاق حتى يتمكن المطورون من استخدام واجهة برمجة تطبيقات الكاميرا لتضمين كاميرا ، ثم الاستمرار في إنشاء تطبيقاتهم ، وعندما تقوم Android بتحسين واجهة برمجة تطبيقات الكاميرا ، ستستفيد جميع التطبيقات التي تعتمد عليها من هذا التحسين تلقائيًا.', '', 'هل تعلم أن واجهات برمجة التطبيقات تتحكم في الوصول إلى جميع المصادر?', 'تُستخدم واجهات برمجة التطبيقات أيضًا للتحكم في الوصول إلى الأجهزة ووظائف البرامج التي قد لا يكون للتطبيق بالضرورة إذن باستخدامها، لهذا السبب غالباً ما تلعب واجهات برمجة التطبيقات دورًا كبيرًا في الأمان.\n\n \n\n على سبيل المثال ، عندما تقوم بفتح موقع ويب أكيد فى مره من المرات ظهر لك رسالة بأعلى يسار الشاشة، تقول لك أن موقع الويب يطلب رؤية موقعك الدقيق ، فإن موقع الويب هذا يحاول استخدام واجهة برمجة تطبيقات الموقع الجغرافي في متصفح الويب الخاص بك، تعرض متصفحات الويب واجهات برمجة التطبيقات مثل هذا لتسهيل مطوري الويب الوصول إلى موقعك – ​​يمكنهم فقط أن يسألوا “أين أنت؟” ويقوم المستعرض بعمل شاق للوصول إلى GPS أو شبكات Wi-Fi القريبة للعثور على موقعك الفعلي.\n\n \n\nعلى سبيل المثال ، إذا حاول أحد المطورين الوصول إلى الكاميرا عبر واجهة برمجة تطبيقات الكاميرا ، فيمكنك رفض طلب الإذن والتطبيق ليس لديه طريقة للوصول إلى كاميرا جهازك.\n\n \n\nأنظمة الملفات التي تستخدم الأذونات – كما تفعل على أنظمة Windows و Mac و Linux – لها تلك الأذونات التي يفرضها API لنظام الملفات. لا يتمتع التطبيق النموذجي بوصول مباشر إلى القرص الثابت الفعلي، بدلاً من ذلك ، يجب أن يصل التطبيق إلى الملفات من خلال واجهة برمجة التطبيقات.', '', 'تستخدم واجهات برمجة التطبيقات للاتصال بين معظم الخدمات', 'تستخدم واجهات برمجة التطبيقات لجميع أنواع الأسباب الأخرى ، أيضًا. على سبيل المثال ، إذا سبق لك أن رأيت كائن خرائط Google مضمنًا على موقع ويب ، فإن موقع الويب هذا يستخدم واجهة برمجة تطبيقات خرائط Google لتضمين تلك الخريطة، تكشف Google عن واجهات برمجة التطبيقات مثل هذه لمطوري الويب ، الذين يمكنهم بعد ذلك استخدام واجهات برمجة التطبيقات لربط الأشياء المعقدة مباشرةً على مواقعهم على الويب، إذا لم تكن واجهات برمجة التطبيقات من هذا القبيل موجودة ، فقد يتعين على المطورين إنشاء خرائط خاصة بهم وتقديم بيانات الخريطة الخاصة بهم فقط لوضع خريطة تفاعلية صغيرة على موقع ويب.\n\n \n\nونظرًا لكونه واجهة برمجة تطبيقات ، يمكن لـ Google التحكم في الوصول إلى خرائط Google على مواقع الويب الخاصة بجهات خارجية ، مما يضمن استخدامها بطريقة متسقة بدلاً من محاولة تضمين إطار يعرض برنامج Google Maps كاملا.\n\n \n\nوهذا ينطبق على العديد من الخدمات عبر الإنترنت المختلفة. هناك واجهات برمجة التطبيقات لطلب ترجمة نصية من الترجمة من Google ، أو لتضمين تعليقات أو تغريدات على Facebook من موقع Twitter.', '', '', ' ', '', '2023-03-02 01:36:14'),
(89, 27, 'abdlrahman magdy', 'logo.png', 'افضل 6 extensions للمطورين', 'web developer', 'www.albashmoparmeg (7).png', ' يضيف مُلحق web developer لمتصفح Chrome شريط أدوات صغير به العديد من أدوات مطوري الويب، وجاء المفهوم الأصلي لملحق Web Developer من شريط أدوات PNH Developer.ن طريق هذه الـ extension تقدر:\r\nتعطل JavaScript نهائيًا.\r\nتعطل Notifications من أى موقع.\r\nتعطل أى plugins.\r\nتتحكم فى الـ cookies [ تعطلة – تضيف واحد جديد – تحذفه نهائيًا – تشوف جميع المعلومات عنه – ..إلخ ].\r\nتتحكم فى CSS [ تعطل جميع styles الموجوده فى الموقع – تعطل الـ inline-style فقط – تعدل على كود CSS معين – وتحكم تام فى CSS ].\r\nوفيه أدولت كثيرة جدًا فى extension دى هتساعدك بنسبة كبيرة جدًا بصفتك مطور.', 'Window Resizer', 'تيح لك ملحق Window Resizer تغيير حجم نافذة المتصفح أثناء التنقل.\n\nيؤدي النقر فوق الرمز الموجود في شريط القوائم إلى إنشاء قائمة منسدلة بأحجام النوافذ التي يمكنك تخصيصها. ما يميز برنامج Window Resizer هو أنه يوفر خيارًا لتشغيله كنافذة منبثقة ، مما يتيح لك التبديل بين درجات دقة الشاشة المختلفة ومعرفة ما إذا كانت نقاط توقف الوسائط تعمل كما هو متوقع، ويمكنك أيضًا تدوير الشاشة وتخصيص الإعدادات المسبقة.', '', 'clear cache', 'تتيح لك إضافة Chrome المفيدة للغاية هذه مسح cache “ذاكرة التخزين المؤقت” من شريط الأدوات، مما يعني عدم وجود نوافذ منبثقة.\n\nإنه قابل للتخصيص من حيث مقدار البيانات التي تريد مسحها ، بما في ذلك ذاكرة التخزين المؤقت للتطبيق والتنزيلات وأنظمة الملفات وبيانات النموذج والسجل والتخزين المحلي وكلمات المرور والمزيد.', '', 'Wappalyzer - Technology profiler', 'حدد Wappalyzer تقنيات الويب المستخدمة في أي موقع ويب.\n\nيكتشف أنظمة إدارة المحتوى ومنصات التجارة الإلكترونية وأطر الويب وبرامج الخادم وأدوات التحليلات وغيرها الكثير. \n\nويمكنك أيضًا زيارة موقع الويب الرسمي للإضافة ، حيث يمكنك البحث عن أي موقع ويب ومعرفة التكنولوجيا التي يستخدمها.\n\n', '', 'ColorZilla', 'استخدام ColorZilla ، يمكنك الحصول على أى لون من أي نقطة في متصفحات الويب ، وضبط هذا اللون بسرعة ولصقه في أى مكان تريده، وستم حفظ هذا اللون فى History الألوان داخل الأداة.\n\n', '', '2023-03-02 01:48:48'),
(90, 27, 'abdlrahman magdy', 'logo.png', 'خارطة الطريق لبرمجة المواقع', 'خارطة طريق مختصرة توضح مجال تطوير المواقع للراغبين في البدء به', 'flat-abstract-wireframe-background_23-2148995803.png', 'إن كنت تريد البدء بتطوير المواقع فهذا المقال سيضعك في بداية الطريق وسيعطيك تصورًا عن التقنيات التي ستتعلمها وفائدة هذه التقنيات حتى تكون لديك فكرة مسبقة عما يجب أن تتعلمه، مما سيجعلك تبدأ بداية صحيحة في هذا المجال.', 'كيف تعمل المواقع', ' الموقع يتكون بشكل أساسي من مجموعة من الملفات والصفحات المترابطة مع بعضها، هذه الملفات تُخزّنُ على خادم (Server) وهو جهاز كمبيوتر تكون بالغالب مواصفاته قوية جدا ويعمل على مدار 24 ساعة دون انقطاع، فعند كتابتك في المتصفح لرابط أي موقع يقوم المتصفح بطلب ملفا', '0ZuJ6sm4CxxyFtN9QhA53qqrZFS4lwwHHbYsS50D.png', 'أقسام تطوير وتصميم المواقع', ' كل موقع يجب أن يحتوي على تصميم، والتصميم في الغالب هو أول ما يلفت الانتباه عند تصفح أي موقع، فتصميم الموقع من الأمور المهمة، وهو أول موضوع ستتعلمه قبل البدء ببرمجة المواقع بشكل فعلي، وتصميم المواقع لا يتم باستخدام البرمجة، بل يتم عن طريق بعض اللغات الوصفية البسيطة، وسنتطرق إلى هذا الموضوع أكثر لاحقا في هذا المقال.\r\nبرمجة المواقع تنقسم إلى قسمين:\r\n1. البرمجة من جهة العميل ( Client Side - Frontend)\r\nوضحنا سابقا أن الموقع يعمل عن طريق إرسال طلب من المتصفح إلى السيرفر، ثم يرسل السيرفر الاستجابة، والاستجابة تحتوي على عدد من الملفات، من الملفات المهمة هي ملفات لغة جافاسكربت (Javascript) فبما أن السيرفر يقوم بإرسال كود جافاسكربت إلى العميل، فإن هذا يعني أن كود جافاسكربت لن يتم تنفيذه على السيرفر، إنما يتم إرساله إلى العميل ثم يُنفذ على جهاز العميل، والفائدة من هذه العملية هو تنفيذ مهام أو عمليات معينة داخل الموقع بالتعامل مع عناصر الموقع ( كالأزرار والنصوص وغيرها ) وتُنفذ العملية بشكل مباشر أمام المستخدم، لأن الكود ينفذ على جهازه وليس على السيرفر، فعند تنفيذ عملية معينة باستخدام جافاسكربت، لا داعي لإرسال طلب إلى السيرفر ليقوم بدوره بالاستجابة، فالكود موجود على جهازك أنت وسينفذ في جهازك مباشرة، وهناك العديد من الأمثلة على ذلك، فعند كتابتك لسؤال مثلا في عالم البرمجة، ستلاحظ وجود مكان لكتابة الكلمات الدلالية للسؤال، وعند ضغط زر Enter بعد كتابة الكلمة، تجد أن لون خلفية الكلمة قد تغير إضافة إلى ظهور زر لحذفها، وتلاحظ أيضا أن العملية تمت مباشرة وتحصل هذه العملية حتى إن فصلت اتصال الانترنت عن جهازك، لأن هذه العملية تم تنفيذها على جهازك وليس على السيرفر لذلك لم تحصل عملية طلب واستجابة ( Request - Response ) فلم يؤثر انقطاع اتصال الانترنت على هذه العملية.\r\n2. البرمجة من جهة الخادم (Server side - Backend):\r\nتختلف البرمجة من جهة الخادم عن البرمجة من جهة العميل، فالكود لا يتم إرساله إلى المستخدم أبدا، إنما يتم تنفيذه على الخادم، فمثلا عند تسجيلك في موقع عالم البرمجة يقوم المتصفح بإرسال طلب إلى الخادم فيه المعلومات التي قمت بإدخالها، يقوم الخادم بالعديد من العمليات عند وصول الطلب، منها التحقق من عدم تكرار البريد الالكتروني في قاعدة بيانات الموقع، وتشفير كلمة المرور لمنع إمكانية الاطلاع عليها وإضافة المعلومات التي أدخلتها وكلمة المرور المشفرة إلى قاعدة البيانات، وبعد هذه العمليات كلها يرسل الخادم استجابة (Response) فيها معلومات عن نجاح أو فشل العملية وهذه المعلومات تصل مضمنة خلال المحتوى ولن تصل على شكل كود يُنفذ على جهاز المستخدم.', '', 'كيف يعرض المتصفح صفحات الموقع', 'شرحنا في النقطة 1.2 كيف يعمل الموقع، وذكرنا أن المتصفح يرسل طلبا للسيرفر، فيقوم السيرفر بتزويده بالبيانات التي تلزمه، ومن البيانات التي يستقبلها المتصفح عن السيرفر هي محتويات الصفحة ( من نصوص وجداول وصور وغيرها ) إضافة إلى خصائص وصفات هذه المحتويات ( من خصائص الخطوط كاللون ونوع الخط، أو الخلفيات وغيرها ).\n\nلكن كيف تنتقل هذه العناصر من السيرفر ويفهمها المتصفح ثم يعرضها؟\n\nعناصر الصفحة تنتقل بصيغة معينة متعارف عليها، هذه الصيغة هي لغة HTML وهي لغة وصفية ( أي أنها تصف محتوى معين وليست لغة برمجة ) فكل محتوى داخل الصفحة كفقرات النص أو العناوين أو حتى الصور والأزرار وغيرها تُمثّلُ باستخدام HTML، وبما أنها لغة ( أي أنها نص ) فمن السهل انتقالها من السيرفر إلى المتصفح.\n\nفي السابق كان بإمكان تحديد الألوان وبعض الخصائص الشكلية للعناصر عن طريق HTML، لكن بعد الاصدار الخامس منها أصبح هذا الأمر غير مفضلا، فهناك بالفعل لغة أخرى متخصصة في أمور التصميم والألوان وغيرها من الخصائص المتعلقة بالشكل، لذلك حُذِفت هذه الخصائص من الاصدار الخامس لتوحيد طريقة التصميم (Styling). فأصبح كل ما يتعلق بالتصميم يتم عن طريق لغة CSS ( وهي أيضا ليست لغة برمجة ).', '', 'تصميم الموقع', ' اتفقنا في النقطة 2.2 على أن أول خطوة في التعلم هي تعلم تصميم المواقع، كما وضحنا في النقطة 2.3 كيف يعرض المتصفح صفحات الموقع، ومنه علمنا أن التصميم يتم باستخدام لغتين وهما HTML و CSS.', '', '2023-03-02 01:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_pro` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subheading` varchar(255) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `subheading2` varchar(255) DEFAULT NULL,
  `content2` text DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `subheading3` varchar(255) DEFAULT NULL,
  `content3` text DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `subheading4` varchar(255) DEFAULT NULL,
  `content4` text DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `subheading5` varchar(255) DEFAULT NULL,
  `content5` text DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `challenges`
--

CREATE TABLE `challenges` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_pro` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subheading` varchar(255) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `subheading2` varchar(255) DEFAULT NULL,
  `content2` text DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `subheading3` varchar(255) DEFAULT NULL,
  `content3` text DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `subheading4` varchar(255) DEFAULT NULL,
  `content4` text DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `subheading5` varchar(255) DEFAULT NULL,
  `content5` text DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `message` text NOT NULL,
  `time_message` datetime NOT NULL,
  `user_ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `message`, `time_message`, `user_ip`) VALUES
(6, 'dsdad', 'sadasd@gmail.comds', 1128824223, ' dasafasd@gmail.com', '2023-02-27 22:35:26', '::1'),
(7, 'dsdad', 'sadasd@gmail.comds', 1128824223, ' dasafasd@gmail.com', '2023-02-27 22:35:31', '::1'),
(8, 'dsdad', 'sadasd@gmail.comds', 1128824223, '', '2023-02-27 22:41:04', '::1'),
(9, 'dsdad', 'sadasd@gmail.comds', 1128824223, 'dasdasdfsf', '2023-02-27 22:41:08', '::1'),
(10, 'dsdad', 'sadasd@gmail.comds', 1128824223, 'dsadfsfsgdf', '2023-02-27 22:42:36', '::1'),
(11, 'sadfsag fsdfgd', 'gsghfdhh@gmail.com', 1128824223, 'fdsfa', '2023-02-27 22:46:12', '::1'),
(12, 'dsdad', 'sadasd@gmail.comds', 1128824223, 'dsafdsaf', '2023-02-27 22:48:24', '::1'),
(13, 'sadfsag fsdfgd', 'gsghfdhh@gmail.com', 1128824223, 'ffsadasd', '2023-02-27 22:53:15', '::1'),
(14, 'sadfsag fsdfgd', 'gsghfdhh@gmail.com', 1128824223, 'ffsadasd', '2023-02-27 22:53:25', '::1'),
(15, 'fadsffdaf fdafa', 'fdafdfadffdsfdsa@gmail.com', 1128824223, 'dsafasd', '2023-02-27 22:53:51', '::1'),
(16, 'sadfsag fsdfgd', 'gsghfdhh@gmail.com', 1128824223, 'dasfddsafgsd', '2023-02-27 22:54:34', '::1'),
(17, 'sadfsag fsdfgd', 'gsghfdhh@gmail.com', 1128824223, 'hello', '2023-02-27 22:56:45', '::1'),
(18, 'ahmed', 'abdelrahmanmagy333@gmail.com', 1128824223, 'dafda', '2023-02-27 22:57:10', '::1'),
(19, 'fadsffdaf fdafa', 'fdafdfadffdsfdsa@gmail.com', 1128824223, 'dasfda', '2023-02-27 23:05:56', '::1'),
(20, 'fadsffdaf fdafa', 'fdafdfadffdsfdsa@gmail.com', 1128824223, 'afdaf', '2023-02-27 23:06:22', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

CREATE TABLE `question_answers` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `img_profile` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pro_img` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `login_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `pro_img`, `role`, `login_date`) VALUES
(5, 'mido', 'mido', 'mido', 'mido', '1234', 'mido', 'admin', '2023-02-08 00:54:28'),
(16, 'abdlrahman', 'abdlrahman', 'abdlrahman', 'Abdelrahman@gmail.com', '123456', 'Documents/logo (3).png', 'admin', '2023-02-12 14:31:11'),
(27, 'abdlrahman magdy', 'abdelrahman ', 'magdy', 'abdlrahmanmagdy@gmail.com', '1234', 'logo.png', 'admin', '2023-02-18 00:54:33'),
(51, 'fdsgdf', 'dgsgffsfd', 'asfdasf', 'afafsaffgg@gmail.com', 'fdsfsfq', '1677202822_9161.png', NULL, '2023-02-24 03:40:22'),
(52, 'fdasfasg', 'fdasfasg', 'asgsdgfs', 'fdasgs@gmail.com', 'gdasgasg', '1677202844_2308.png', NULL, '2023-02-24 03:40:44'),
(53, 'dad', 'dsadfasfas', 'sdafasfd', 'fasfafas@gmail.com', 'fadsfasf', '1677203085_9564.png', NULL, '2023-02-24 03:44:45'),
(54, 'ahmed', 'dsaf', 'fdsfsf', 'sfsfdsfsf@gmail.com', 'dasdfaf', '1677203722_8612.png', NULL, '2023-02-24 03:55:22'),
(55, 'dasdsa', 'fassad', 'asfdsf', 'fdsdffaf@gmail.com', 'fsafdsf', '1677239456_1503.png', NULL, '2023-02-24 13:50:56'),
(56, 'adasd', 'dadsad', 'sasadsa', 'dsadassd@gmail.com', 'fasdfa', '1677239715_4552.png', NULL, '2023-02-24 13:55:15'),
(57, 'fdsgdhd', 'fdasagsshd', 'dhgfj', 'fgkjghklhgjk@gmail.com', 'dgfdhfda', '1677240003_6773.png', NULL, '2023-02-24 14:00:03'),
(58, 'dafdsg', 'dsgfddh', 'fdshgfsdh', 'fdhdh@gmail.com', 'gdfhdsh', '1677240312_4676.png', NULL, '2023-02-24 14:05:12'),
(59, 'dsafa', 'fdsaaf', 'dsadsa', 'dasdas@gmail.com', 'sdadafsa', '1677240944_4257.png', NULL, '2023-02-24 14:15:44'),
(60, 'dsada', 'dasfdaf', 'fdafsa@gmail.com', 'fdasffdsag@gmail.com', 'fdasgsgsfd', '1677243678_4281.png', NULL, '2023-02-24 15:01:18'),
(61, 'abdelrahman ', 'fadsffdaf', 'fdafa', 'fdafdfadffdsfddsada@gmail.com', 'dsadada', '1677532164_1939.png', NULL, '2023-02-27 23:09:24'),
(62, 'abdelrahmanf', 'abdelrahmanf', 'abdelrahmanf', 'abdelrahmanf@gmail.com', 'fsadsdsad', '1677533977_6908.png', NULL, '2023-02-27 23:39:37'),
(63, 'abdelrahmanmagdy', 'abdelrahmanmagdy', 'abdelrahmanmagdy11f1', 'abdelrahmanmagdy11f1@gmail.com', '1432rsd', '1677541677_7747.png', NULL, '2023-02-28 01:47:57'),
(64, 'mig', 'mig', 'mig', 'mig@gmail.com', '12r214sad', '1677541706_1313.png', NULL, '2023-02-28 01:48:26'),
(65, 'gfdsg', 'dshgfdhg', 'fjhgfj', 'gkhjkgh@gmail.com', 'kjhgjggd', '1677541905_5024.png', NULL, '2023-02-28 01:51:45'),
(66, 'gfdsgfsd', 'hgfdh', 'gjg', 'gkjhkhk@gmail.com', 'dasfdsf', '1677541957_8074.png', NULL, '2023-02-28 01:52:37'),
(67, 'dafdcsafs', 'gfdgdh', 'gfhfjf', 'jhgjgjg@gmail.com', 'dsafsd', '1677542025_1396.png', NULL, '2023-02-28 01:53:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `admin_name` (`admin_name`),
  ADD KEY `admin_pro` (`admin_pro`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `admin_name` (`admin_name`),
  ADD KEY `admin_pro` (`admin_pro`);

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `admin_name` (`admin_name`),
  ADD KEY `admin_pro` (`admin_pro`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `img_profile` (`img_profile`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `pro_img` (`pro_img`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `challenges`
--
ALTER TABLE `challenges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `register` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`admin_name`) REFERENCES `register` (`username`),
  ADD CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`admin_pro`) REFERENCES `register` (`pro_img`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `register` (`id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`admin_name`) REFERENCES `register` (`username`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`admin_pro`) REFERENCES `register` (`pro_img`);

--
-- Constraints for table `challenges`
--
ALTER TABLE `challenges`
  ADD CONSTRAINT `challenges_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `register` (`id`),
  ADD CONSTRAINT `challenges_ibfk_2` FOREIGN KEY (`admin_name`) REFERENCES `register` (`username`),
  ADD CONSTRAINT `challenges_ibfk_3` FOREIGN KEY (`admin_pro`) REFERENCES `register` (`pro_img`);

--
-- Constraints for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD CONSTRAINT `question_answers_ibfk_1` FOREIGN KEY (`img_profile`) REFERENCES `register` (`pro_img`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
