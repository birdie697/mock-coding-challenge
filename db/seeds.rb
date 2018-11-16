#create seeds.rb
#from lib/create_seeds.rb
#by running: $ rails runner lib/create_seeds.rb
#
#empty the Contributor table, then the Repo table

Contributor.destroy_all
Repo.destroy_all

repo1 = Repo.create name: 'scutan90 / DeepLearning-500-questions', description: '深度学习500问，以问答形式对常用的概率知识、线性代数、机器学习、深度学习、计算机视觉等热点问题进行阐述，以帮助自己及有需要的读者。 全书分为15个章节，近20万字。由于水平有限，书中不妥之处恳请广大读者批评指正。 未完待续............ 如有意合作，联系scutjy2015@163.com 版权所有，违权必究 Tan 2018.06'
Contributor.create name: 'scutan90', repo: repo1
Contributor.create name: 'tectal', repo: repo1
Contributor.create name: 'HuangQinJian', repo: repo1
Contributor.create name: 'aa12356jm', repo: repo1
Contributor.create name: 'deasonyuan', repo: repo1

repo2 = Repo.create name: 'leonardomso / 33-js-concepts', description: '📜 33 concepts every JavaScript developer should know.', language: 'JavaScript'
Contributor.create name: 'leonardomso', repo: repo2
Contributor.create name: 'ilker0', repo: repo2
Contributor.create name: 'yjs03057', repo: repo2
Contributor.create name: 'lokesh-coder', repo: repo2
Contributor.create name: 'Mohamed3on', repo: repo2

repo3 = Repo.create name: 'deeppomf / DeepCreamPy', description: 'Decensoring Hentai with Deep Neural Networks', language: 'Python'
Contributor.create name: 'deeppomf', repo: repo3
Contributor.create name: 'harjitmoe', repo: repo3
Contributor.create name: 'ImgBotApp', repo: repo3
Contributor.create name: 'StartleStars', repo: repo3
Contributor.create name: 'itsVale', repo: repo3

repo4 = Repo.create name: 'google-research / bert', description: 'TensorFlow code and pre-trained models for BERT', language: 'Python'
Contributor.create name: 'jacobdevlin-google', repo: repo4
Contributor.create name: 'ammarasmro', repo: repo4
Contributor.create name: 'ming-wei-chang', repo: repo4
Contributor.create name: 'stefan-it', repo: repo4
Contributor.create name: 'cbockman', repo: repo4

repo5 = Repo.create name: 'dipakkr / A-to-Z-Resources-for-Students', description: 'Curated list of resources for college students  Show your ❤️ by giving a ⭐️'
Contributor.create name: 'dipakkr', repo: repo5
Contributor.create name: 'Contrevien', repo: repo5
Contributor.create name: 'shauryauppal', repo: repo5
Contributor.create name: 'Parikshit-Hooda', repo: repo5
Contributor.create name: 'Abhishekkumar2k18', repo: repo5

repo6 = Repo.create name: 'palmerhq / the-platform', description: 'Web. Components. 😂', language: 'JavaScript'
Contributor.create name: 'jaredpalmer', repo: repo6
Contributor.create name: 'crosscompile', repo: repo6
Contributor.create name: 'overra', repo: repo6
Contributor.create name: 'styfle', repo: repo6
Contributor.create name: 'birkir', repo: repo6

repo7 = Repo.create name: 'akavel / up', description: 'Ultimate Plumber is a tool for writing Linux pipes with instant live preview', language: 'Go'
Contributor.create name: 'akavel', repo: repo7
Contributor.create name: 'rhnvrm', repo: repo7
Contributor.create name: '0xflotus', repo: repo7

repo8 = Repo.create name: 'wagoodman / dive', description: 'A tool for exploring each layer in a docker image', language: 'Go'
Contributor.create name: 'wagoodman', repo: repo8
Contributor.create name: 'willmurphyscode', repo: repo8
Contributor.create name: 'akshaychhajed', repo: repo8
Contributor.create name: 'muesli', repo: repo8
Contributor.create name: 'mickdekkers', repo: repo8

repo9 = Repo.create name: 'ChrisKnott / Algojammer', description: 'An experimental code editor for writing algorithms', language: 'C++'
Contributor.create name: 'ChrisKnott', repo: repo9
Contributor.create name: 'claushellsing', repo: repo9
Contributor.create name: 'sayoojkz', repo: repo9

repo10 = Repo.create name: 'stephentian / 33-js-concepts', description: '📜 每个 JavaScript 工程师都应懂的33个概念 @leonardomso', language: 'JavaScript'
Contributor.create name: 'stephentian', repo: repo10
Contributor.create name: 'cnwangjie', repo: repo10
Contributor.create name: 'justjavac', repo: repo10

repo11 = Repo.create name: 'facebookresearch / maskrcnn-benchmark', description: 'Fast, modular reference implementation of Instance Segmentation and Object Detection algorithms in PyTorch.', language: 'Python'
Contributor.create name: 'fmassa', repo: repo11
Contributor.create name: 'soumith', repo: repo11
Contributor.create name: 'belowmit', repo: repo11
Contributor.create name: 'killthekitten', repo: repo11
Contributor.create name: 'macfly1202', repo: repo11

repo12 = Repo.create name: 'open-source-for-science / TensorFlow-Course', description: 'Simple and ready-to-use tutorials for TensorFlow', language: 'Python'
Contributor.create name: 'astorfi', repo: repo12
Contributor.create name: 'HisashiQ', repo: repo12
Contributor.create name: 'brandonmbanks', repo: repo12
Contributor.create name: 'avinassh', repo: repo12
Contributor.create name: 'brianfinkelstien', repo: repo12

repo13 = Repo.create name: 'firstcontributions / first-contributions', description: '🚀✨ Help beginners to contribute to open source projects'
Contributor.create name: 'Roshanjossey', repo: repo13
Contributor.create name: 'sara-02', repo: repo13
Contributor.create name: 'mippzon', repo: repo13
Contributor.create name: 'invalid-email-address', repo: repo13
Contributor.create name: 'Busterz', repo: repo13

repo14 = Repo.create name: 'kamranahmedse / pennywise', description: 'Cross-platform application to open anything in a floating window', language: 'JavaScript'
Contributor.create name: 'kamranahmedse', repo: repo14
Contributor.create name: 'akash-joshi', repo: repo14
Contributor.create name: 'jurgenzz', repo: repo14
Contributor.create name: 'mickdekkers', repo: repo14
Contributor.create name: 'mubaidr', repo: repo14

repo15 = Repo.create name: 'rehooks / awesome-react-hooks', description: 'Awesome React Hooks'
Contributor.create name: 'jamiebuilds', repo: repo15
Contributor.create name: 'aarongarciah', repo: repo15
Contributor.create name: 'gnapse', repo: repo15
Contributor.create name: 'AvraamMavridis', repo: repo15
Contributor.create name: 'dispix', repo: repo15

repo16 = Repo.create name: 'gruns / irondb', description: '🔩 A relentless key-value store for the browser.', language: 'JavaScript'
Contributor.create name: 'gruns', repo: repo16
Contributor.create name: 'fairfieldt', repo: repo16
Contributor.create name: 'pruthvikar', repo: repo16

repo17 = Repo.create name: 'freeCodeCamp / freeCodeCamp', description: 'The https://freeCodeCamp.org open source codebase and curriculum. Learn to code for free together with millions of people.', language: 'JavaScript'
Contributor.create name: 'QuincyLarson', repo: repo17
Contributor.create name: 'sahat', repo: repo17
Contributor.create name: 'raisedadead', repo: repo17
Contributor.create name: 'terakilobyte', repo: repo17
Contributor.create name: 'ltegman', repo: repo17

repo18 = Repo.create name: 'Unity-Technologies / FPSSample', description: 'A first person multiplayer shooter example project in Unity', language: 'C#'
Contributor.create name: 'pandr', repo: repo18

repo19 = Repo.create name: 'tensorflow / adanet', description: 'Fast and flexible AutoML with learning guarantees.', language: 'Python'
Contributor.create name: 'cweill', repo: repo19
Contributor.create name: 'scottyak', repo: repo19
Contributor.create name: 'vlejd', repo: repo19
Contributor.create name: 'a-googler', repo: repo19

repo20 = Repo.create name: 'XiaoMi / soar', description: 'SQL Optimizer And Rewriter', language: 'Go'
Contributor.create name: 'martianzhang', repo: repo20
Contributor.create name: 'liipx', repo: repo20
Contributor.create name: '0xflotus', repo: repo20
Contributor.create name: 'HaraldNordgren', repo: repo20
Contributor.create name: 'longhairx', repo: repo20

repo21 = Repo.create name: 'cjbassi / gotop', description: 'A terminal based graphical activity monitor inspired by gtop and vtop', language: 'Go'
Contributor.create name: 'cjbassi', repo: repo21
Contributor.create name: 'f1337', repo: repo21
Contributor.create name: 'chiefy', repo: repo21
Contributor.create name: 'tie', repo: repo21
Contributor.create name: 'phpor', repo: repo21

repo22 = Repo.create name: 'SCENEE / FloatingPanel', description: 'A clean and easy-to-use floating panel UI component for iOS', language: 'Swift'
Contributor.create name: 'SCENEE', repo: repo22
Contributor.create name: '0xflotus', repo: repo22
Contributor.create name: 'kingcos', repo: repo22

repo23 = Repo.create name: 'maps4print / azul', description: 'Desktop GUI Framework', language: 'Rust'
Contributor.create name: 'fschutt', repo: repo23
Contributor.create name: 'Xoronic', repo: repo23
Contributor.create name: 'Yatekii', repo: repo23
Contributor.create name: 'Escapingbug', repo: repo23
Contributor.create name: 'BrianHarris', repo: repo23

repo24 = Repo.create name: 'tensorflow / tensorflow', description: 'An Open Source Machine Learning Framework for Everyone', language: 'C++'
Contributor.create name: 'tensorflower-gardener', repo: repo24
Contributor.create name: 'caisq', repo: repo24
Contributor.create name: 'vrv', repo: repo24
Contributor.create name: 'gunan', repo: repo24
Contributor.create name: 'mrry', repo: repo24

repo25 = Repo.create name: 'gophish / gophish', description: 'Open-Source Phishing Toolkit', language: 'Go'
Contributor.create name: 'jordan-wright', repo: repo25
Contributor.create name: 'wjwoodson', repo: repo25
Contributor.create name: 'rcutmore', repo: repo25
Contributor.create name: 'StrangeUSB', repo: repo25
Contributor.create name: 'shuheiktgw', repo: repo25

