

Plateformes SMA + Méthodologie de Conception et Modélisation
« CORMAS »
Author. AACHABI Mohammed.
Department of Computer Science, Faculty of Sciences and Technologies, Tangier, Morocco.

Résumé. Ce projet se concentre sur la modélisation des dynamiques des populations de prédateurs et des ressources végétales dans un contexte écologique en utilisant la modélisation basée sur les agents (ABM). L'objectif principal est d'étudier comment différents comportements alimentaires des prédateurs influencent l'épuisement des ressources, les dynamiques énergétiques des prédateurs et la durabilité des populations. Le modèle intègre deux types de prédateurs : restreints et non restreints, chacun avec des stratégies alimentaires distinctes. Les prédateurs interagissent avec des entités végétales stationnaires, qu'ils consomment pour obtenir de l'énergie. À travers des simulations, nous visons à explorer les implications du comportement des prédateurs sur la disponibilité des ressources, les cycles de vie des prédateurs et la dynamique des populations. Cette recherche contribue à notre compréhension des interactions complexes entre les prédateurs et leur environnement, avec des implications pour la durabilité écologique et la gestion des ressources.
Keywords:	SMA .	Agents.	 Environnement .  	Cormas.	
 
1.	Introduction Générale .
L'interaction entre les populations de prédateurs et les ressources disponibles est un aspect fondamental des systèmes écologiques. Les prédateurs, organismes qui consomment des ressources pour obtenir de l'énergie, jouent un rôle crucial dans la façon dont les écosystèmes fonctionnent. Comprendre comment les prédateurs interagissent avec leur environnement, en particulier en termes de comportement alimentaire, d'acquisition d'énergie et de régulation des populations, est essentiel pour comprendre le fonctionnement et la résilience des écosystèmes. 
Dans le cadre de ce projet réalisé dans le module Systèmes Multi-Agents, nous nous concentrons sur la modélisation des populations de prédateurs. Nous explorons comment différents comportements alimentaires des prédateurs influencent l'utilisation des ressources, les dynamiques énergétiques des prédateurs et la durabilité des populations. En utilisant la modélisation basée sur les agents, nous examinons les interactions complexes entre les prédateurs et les ressources végétales dans un contexte écologique. Ces recherches fourniront des informations précieuses pour la gestion durable des ressources et la conservation des écosystèmes.

2.	Objectifs.
Les principaux objectifs de ce projet sont d’ :
1.	Examiner comment les interactions complexes entre les prédateurs et les ressources végétales peuvent être représentées de manière efficace dans le cadre d'un système multi-agents. Cela inclut la modélisation des comportements individuels des prédateurs, tels que la recherche de nourriture et les interactions sociales, ainsi que la représentation des attributs des ressources végétales, comme la disponibilité et la croissance. 
2.	Évaluer comment différentes stratégies alimentaires des prédateurs, telles que les comportements de prédation restreints ou non restreints, influent sur la dynamique des populations et des ressources au sein du système multi-agents. Cela implique d'analyser les effets de ces comportements sur la disponibilité des ressources, la compétition entre les prédateurs, et la régulation de la population. 
3.	Explorer la résilience et la sensibilité du modèle face à des variations dans les paramètres et les conditions environnementales en utilisant des techniques de modélisation multi-agents. Cela comprend la réalisation d'analyses de sensibilité pour identifier les paramètres clés qui influent sur les résultats du modèle, ainsi que la simulation de différents scénarios pour évaluer la robustesse du modèle dans des conditions variées.

3.	Installation .

1.	Installation de Pharo :
Pharo est un langage de programmation purement orienté objet et un environnement puissant, axé sur la simplicité et la rétroaction immédiate (pensez IDE et OS intégrés en un seul). 
 

Teaser
1.	Langage simple et puissant : pas de constructeurs, pas de déclaration de type, pas d’interfaces, pas de types primitifs. Pourtant, un langage puissant et élégant avec une syntaxe complète dans une carte postale! Pharo est des objets et des messages tout le chemin vers le bas.
2.	Environnement immersif en direct : Retour immédiat à tout moment de votre développement : Développement, test, débogage. Même dans les environnements de production, vous ne serez plus jamais coincé dans la compilation et le déploiement des étapes!
3.	Expérience de débogage incroyable : L’environnement Pharo comprend un débogueur différent de tout ce que vous avez vu auparavant. Il vous permet de parcourir le code, de redémarrer l’exécution de la méthode, de créer des méthodes à la volée et bien plus encore!
4.	Pharo est à vous : Pharo est créé par une communauté incroyable, avec plus de 100 contributeurs pour la dernière révision de la plate-forme et des centaines de personnes qui contribuent constamment avec des frameworks et des bibliothèques.
5.	Entièrement open-source : Pharo full stack est publié sous licence MIT et disponible sur GitHub

2.	Configuration de Pharo
•	On lance pharo puis , en clique New pour créer une nouvelle image.







•	Choix d’image





•	Lancement d’image 











3.	Installation de Cormas 

On ouvre l’image Pharo 9.0 puis on clique n’importe où pour ouvrir le menu principal. on choisit Playground (Ctrl + OW ou Cmd + OW) pour exécuter le script au-dessus  pour installer la dernière version stable de Cormas .

 

 

4.	Réalisation du projet .
1.	Définition du projet:
Ce projet vise à développer un modèle de système multi-agents pour étudier la dynamique des populations de prédateurs et des ressources végétales dans un environnement écologique simulé. En utilisant la modélisation basée sur les agents, le projet explorera comment différents comportements alimentaires des prédateurs influent sur la disponibilité des ressources, la régulation des populations et la durabilité de l'écosystème.


2.	Les Entités et Comportement :
•	Entités : 
 	Prédateurs restreints et non restreints : Ces agents représentent les prédateurs au sein du système. Chaque prédateur possède des attributs tels que son niveau d'énergie, son comportement alimentaire (restreint ou non restreint), et sa position dans l'environnement. Les prédateurs se déplacent dans l'environnement à la recherche de nourriture et interagissent avec les ressources végétales. 
 	Ressources végétales : Ces entités représentent les plantes disponibles dans l'environnement. Chaque plante possède des attributs comme sa biomasse et sa position. Les plantes peuvent être consommées par les prédateurs pour obtenir de l'énergie. 
•	Comportements : 
 	Comportement alimentaire des prédateurs : Les prédateurs restreints consomment une quantité modérée de ressources végétales lorsqu'ils se nourrissent. Les prédateurs non restreints consomment une quantité importante de ressources végétales lorsqu'ils se nourrissent. Lorsqu'un prédateur se nourrit, il réduit la biomasse de la plante consommée et augmente son propre niveau d'énergie en conséquence. 
 	Déplacement des prédateurs : Les prédateurs se déplacent dans l'environnement en quête de nourriture. Leur déplacement peut être influencé par des facteurs tels que la densité des ressources végétales, les interactions avec d'autres prédateurs, ou des stimuli environnementaux. 
 	Croissance des ressources végétales : Les ressources végétales peuvent croître progressivement au fil du temps, augmentant leur biomasse et leur disponibilité pour les prédateurs. Interactions entre prédateurs : Les prédateurs peuvent interagir entre eux, par exemple en compétition pour les ressources alimentaires ou en formant des agrégats sociaux. 
 	Cycle de vie des prédateurs : Les prédateurs peuvent mourir si leur niveau d'énergie atteint zéro. Les prédateurs peuvent se reproduire si leur niveau d'énergie atteint un seuil maximum. Les nouveaux prédateurs nés de la reproduction héritent des caractéristiques de leurs parents et occupent une position proche de celle-ci dans l'environnement. 
 	Évolution des stratégies alimentaires : Les prédateurs peuvent évoluer au fil des générations, avec les stratégies alimentaires les mieux adaptées à l'environnement étant favorisées par la sélection naturelle. Ces entités et comportements constituent les éléments de base du modèle de système multi-agents pour étudier la dynamique des populations de prédateurs et des ressources végétales dans un environnement simulé.

3.	Diagram de class :

4.	Création d’un nouveau projet :

On a procédé à la création d'un nouveau projet sous Cormas en suivant une série d'étapes. Tout d'abord, nous avons ouvert le logiciel Cormas sur notre ordinateur. Ensuite, dans la barre de menu, nous avons sélectionné l'option "File" puis "New". Cela nous a permis d'ouvrir une nouvelle fenêtre pour créer notre projet.
Dans cette fenêtre, nous avons configuré les paramètres du projet en renseignant le nom du projet, son emplacement sur notre ordinateur, ainsi qu'une brève description. Nous avons également choisi le type de modèle que nous souhaitions créer, en l'occurrence un modèle basé sur les agents.
Une fois le projet créé, nous avons entamé la définition des entités et des comportements qui constitueront notre modèle. À l'aide des outils de modélisation de Cormas, nous avons créé les agents, défini leurs caractéristiques et spécifié leurs interactions avec l'environnement et les autres agents.






Nous avons également configuré l'environnement dans lequel évoluent les agents, en déterminant la taille de la grille, la distribution des ressources, et en spécifiant les conditions initiales de l'environnement et des agents pour démarrer la simulation.

Une fois ces étapes accomplies, nous avons programmé les comportements spécifiques des agents en utilisant le langage de programmation intégré à Cormas. Nous avons défini des règles de comportement pour chaque type d'agent, telles que les déplacements, les interactions sociales, et la reproduction.






Une fois ces étapes accomplies, nous avons programmé les comportements spécifiques des agents en utilisant le langage de programmation intégré à Cormas. Nous avons défini des règles de comportement pour chaque type d'agent, telles que les déplacements, les interactions sociales, et la reproduction.

5.	Résultats et tests.
1.	Simulation:
La simulation a été lancée en utilisant le modèle développé dans le cadre de ce projet. Pendant l'exécution de la simulation, nous avons observé le comportement des agents prédateurs et des ressources végétales dans l'environnement simulé. Nous avons noté les interactions entre les agents, telles que les déplacements, les interactions sociales et les comportements alimentaires. De plus, nous avons suivi l'évolution des populations de prédateurs et la disponibilité des ressources végétales au fil du temps.

2.	Analyse de résultats:
Ce projet vise à développer un modèle de système multi-agents pour étudier la dynamique des populations de prédateurs et des ressources végétales dans un environnement écologique simulé. En utilisant la modélisation basée sur les agents, le projet explorera comment différents comportements alimentaires des prédateurs influent sur la disponibilité des ressources, la régulation des populations et la durabilité de l'écosystème.

D'après les résultats de la simulation, nous observons des comportements différents entre les agents non restreints (unrestricted « en rouge ») et les agents restreints (restricted « en blue ») en ce qui concerne leur consommation de ressources végétales et leur reproduction. 
 	Pour les agents non restreints : 
	Nous remarquons qu'ils commencent à consommer des ressources dès le début de la simulation, et leur nombre de reproductions commence à augmenter après l'étape 20. 
	Leur nombre reste relativement stable entre les étapes 40 et 80, ce qui indique un équilibre entre la consommation de ressources et la reproduction. 
	Cependant, après l'étape 80, nous observons une diminution du nombre d'agents non restreints, ce qui suggère une diminution de la disponibilité des ressources végétales ou d'autres facteurs environnementaux défavorables qui limitent leur survie et leur reproduction. 
 	Pour les agents restreints : 
	Contrairement aux agents non restreints, les agents restreints commencent à consommer des ressources plus tard dans la simulation, après l'étape 40. 
	Leur nombre reste stable entre les étapes 45 et 80, indiquant également un équilibre entre la consommation de ressources et la reproduction. Cependant, leur nombre diminue progressivement après l'étape 80 jusqu'à leur disparition à l'étape 100.
	 Cela suggère que les agents restreints deviennent incapables de se reproduire en raison de la diminution des ressources disponibles, entraînant éventuellement leur extinction.










Ces observations soulèvent plusieurs conclusions potentielles : 
 	Les agents non restreints ont un avantage initial en termes de consommation de ressources et de reproduction, ce qui leur permet de maintenir leur population relativement stable pendant une plus longue période. 
 	Les agents restreints, bien qu'ils consomment moins de ressources, sont plus sensibles à la disponibilité des ressources et peuvent être plus vulnérables à l'extinction en cas de diminution des ressources. 
 	La dynamique de la population des agents non restreints peut avoir un impact sur l'environnement, influençant ainsi la disponibilité des ressources et l'équilibre écologique dans le système. 
Ces conclusions suggèrent l'importance de prendre en compte les interactions entre   les différents types d'agents et leur environnement dans l'étude des dynamiques des populations et des ressources. Elles soulignent également la nécessité d'une gestion prudente des ressources pour assurer la durabilité et la stabilité des écosystèmes.

Dans l'analyse des données de la simulation, une observation notable concerne la dynamique de la biomasse des plantes tout au long des 100 étapes de la simulation. Nous avons constaté une augmentation significative et rapide de la biomasse entre les étapes 0 et 25, suivie d'une diminution rapide entre les étapes 25 et 50, et enfin d'une diminution plus lente entre les étapes 50 et 100. Curieusement, malgré cette diminution, les plantes ne disparaissent pas complètement à la fin de la simulation.
Cette observation peut être interprétée comme suit :
 	La forte augmentation initiale de la biomasse pourrait s'expliquer par une croissance rapide des plantes en raison de conditions environnementales favorables et de l'absence de prédation significative par les agents prédateurs. Cependant, cette croissance est suivie d'une diminution rapide de la biomasse entre les étapes 25 et 50, suggérant une augmentation de la pression de prédation exercée par les prédateurs. À mesure que la population de prédateurs augmente et que leur comportement de prédation devient plus efficace, les plantes subissent une consommation accrue, ce qui entraîne une diminution rapide de leur biomasse. 
 	La diminution plus lente de la biomasse entre les étapes 50 et 100 pourrait être le résultat d'un certain équilibre atteint entre la consommation de ressources par les prédateurs et la capacité des plantes à se régénérer. Bien que la prédation continue d'exercer une pression sur les ressources végétales, celles-ci peuvent encore produire de nouvelles pousses et se régénérer dans une certaine mesure. De plus, les plantes peuvent développer des mécanismes de défense pour faire face à la prédation et maintenir une certaine biomasse dans l'environnement.
Cette observation souligne l'importance des interactions complexes entre les prédateurs et les proies dans la dynamique des populations et des ressources au sein d'un écosystème simulé. Elle met en évidence la nécessité de considérer plusieurs facteurs, tels que la croissance des plantes, la prédation et les adaptations des espèces, pour comprendre pleinement l'évolution de la biomasse dans un environnement dynamique.

6.	Conclusion Générale .
En conclusion, ce projet de modélisation multi-agents a offert une exploration approfondie des dynamiques des populations de prédateurs et des ressources végétales au sein d'un environnement simulé. À travers l'observation minutieuse et l'analyse des résultats de la simulation, plusieurs conclusions générales se dégagent. 
Premièrement, les interactions entre les prédateurs et les proies se révèlent complexes et fluctuantes, influencées par une multitude de facteurs. Les comportements individuels des agents, la disponibilité des ressources et les conditions environnementales jouent tous un rôle crucial dans la dynamique de l'écosystème simulé. Cette interconnexion souligne l'importance d'une approche holistique pour comprendre les mécanismes régissant les écosystèmes.
Deuxièmement, les comportements alimentaires des prédateurs, qu'ils soient restreints ou non, exercent des impacts substantiels sur la stabilité de l'écosystème. Les agents non restreints tendent à exercer une pression plus intense sur les ressources végétales, ce qui peut entraîner des fluctuations plus prononcées dans la dynamique des populations. En revanche, les agents restreints peuvent maintenir un équilibre plus stable avec leur environnement, mais peuvent également être plus sensibles aux variations des ressources disponibles. 
Troisièmement, les populations d'agents démontrent une capacité d'adaptation remarquable aux changements environnementaux. Les comportements émergents et les stratégies de survie des agents témoignent de leur capacité à réguler leurs interactions et à maintenir un certain équilibre dans des conditions changeantes. Cette capacité adaptative souligne l'importance de considérer la diversité et la plasticité comportementale des populations dans la modélisation des écosystèmes. 
En somme, ce projet met en lumière l'efficacité des approches basées sur les systèmes multi-agents pour étudier les dynamiques écologiques. Les résultats obtenus offrent des perspectives précieuses sur les mécanismes régissant les interactions entre les prédateurs et les proies, tout en soulignant l'importance de la recherche continue dans ce domaine pour mieux comprendre et préserver la biodiversité et l'équilibre des écosystèmes.

7.	Références .
1.	cormas/cormas: CORMAS (COmmon pool Ressources and Multi-Agent Simulations) (github.com)
2.	Pharo - Documentation
3.	https://www.irit.fr/~Chihab.Hanachi/Cours/SMA/CoursAgentsI.pdf
4.	Ferber J. (1989) Objets et agents: une  ́etude des structures de repr ́esentation et de communications en Intelligence Artificielle. Th`ese d’Etat, Universit ́e Paris 6. Ferber J. (1990) 
5.	Conception et programmation par objets. Herm`es.
6.	Ferber J. (1994) “La K ́en ́etique: des syst`emes multi-agents `a une science de l’interaction”. Revue internationale de syst ́emique. 8(1), p. 13-27.
7.	Ferber J. (1995a) “Basis of Cooperation in Multi-Agent Systems.” In Proc. of the  95 European Conference on Cognitive Science, Saint-Malo, INRIA.
8.	Ferber J. (1995b) “Reactive Distributed Artificial Intelligence: Principles and Appli-
cations.” In Foundations of Distributed Artificial Intelligence, N. Jennings (Ed.)

