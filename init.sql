\c postgres

-- Erstellen der 'topics' Tabelle
CREATE TABLE quiz_topic (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Erstellen der 'questions' Tabelle
CREATE TABLE quiz_question (
    id SERIAL PRIMARY KEY,
    topic_id INTEGER NOT NULL,
    chapter VARCHAR(255) NOT NULL,
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    FOREIGN KEY (topic_id) REFERENCES quiz_topic(id) ON DELETE CASCADE
);

-- Erstellen der 'agents' Tabelle
CREATE TABLE agents_agent (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);


-- Einfügen der verschiedenen Agenten
INSERT INTO agents_agent (id, name, description) VALUES
(0, 'base', 'Der standard Agent mit Tools'),
(1, 'goal', 'Ein Agent, um ein smartes Ziel zu erstellen'),
(2, 'quiz', 'Agent mit dem ein Quiz gemacht werden kann');

-- Einfügen der verschiedenen Themen
INSERT INTO quiz_topic (id, name) VALUES 
(1, 'Wissenschaftliches Arbeiten'),
(2, 'Rechnungswesen'),
(3, 'Digitale Transformation: Services');

-- Einfügen der verschiedenen Fragen
INSERT INTO quiz_question (topic_id, chapter, question, answer) VALUES
(1, '1.1.1', 'Warum ist es wichtig, in einer wissenschaftlichen Arbeit die Quellen nachzuweisen?', 'Der Leser kann, wenn er möchte, auf die Quellen zurückgreifen und sich selbst mit ihnen beschäftigen. – Generell gilt für das wissenschaftliche Arbeiten, nachvollziehbar und überprüfbar zu sein.'),
(1, '1.1.1', 'Was bedeutet Recherchieren?', 'Recherchieren bedeutet eigentlich Suchen. Gemeint ist die Suche nach wissenschaft- lichen Arbeiten innerhalb des Fachgebiets, auf dem man selbst ein Forschungsprojekt durchführt. Es ist die gezielte Suche, deren Kurs von dem Thema vorgegeben wird, mit welchem man sich beschäftigt. Von einem höheren Standpunkt aus betrachtet bedeutet Recherche den Versuch, eine Kontinuität des Wissens herzustellen, die über Raum- und Zeitgrenzen hinausgeht. Sie bedeutet den Versuch, die Wissenschaft fortschrittlich zu machen.'),
(1, '1.1.1', 'Bei der Materialsuche für eine wissenschaftliche Arbeit soll der aktuelle Forschungs- stand erarbeitet werden. Deshalb sollten die verwendeten Quellen nicht älter sein wie (kreuzen Sie die richtige Antwort an):\na) drei Jahre  b) ca. fünf Jahre  c) ca. zehn Jahre  d) ca. 15 Jahre ', 'Die verwendeten Quellen sollten im Großen und Ganzen nicht älter sein wie ca. 15 Jahre. Einzelne ältere Werke können jedoch durchaus eingesetzt werden.'),
(1, '1.1.2.4', 'Was versteht man unter unselbstständigen Schriften?', 'Unselbstständige Schriften sind z. B. Aufsätze, Beiträge und Artikel. Sie sind in einen größeren Publikationsrahmen eingespannt, in welchem auch andere Urheber mit ande- ren Texten erscheinen.'),
(1, '1.1.2.4', 'Was ist Graue Literatur?', 'Graue Literatur ist Literatur, die nicht oder noch nicht veröffentlicht wurde, jedenfalls nicht auf offiziellem Weg. Will man von ihr als Quelle Gebrauch machen, ist das nicht unproblematisch. Auch hier hat man sich an die Belegpflicht zu halten und dementspre- chende Maßnahmen zu ergreifen (z. B. Hinweise im Literaturverzeichnis, Fotokopien).'),
(1, '1.1.2.4', 'Vervollständigen Sie folgenden Satz:\n„Monografien sind in sich _____________ Texte, die von einem oder mehreren _____________ stammen und sich mit einem _____________ Themenfeld befassen.“', '„Monografien sind in sich geschlossene Texte, die von einem oder mehreren Autoren stammen und sich mit einem abgegrenzten Themenfeld befassen.“'),
(1, '1.1.2.4', 'Eignen sich Lerneinheiten der AKAD University zu einzelnen Modulen als Einstieg in die Recherche zu wissenschaftlichen Arbeiten? Begründen Sie Ihre Antwort.', 'Ja, die Lerneinheiten der AKAD University zu einzelnen Modulen eignen sich als Ein- stieg in die Recherche für eng abgegrenzte Themenbereiche, wie sie z. B. in Assignments bearbeitet werden. Für modul- und themenübergreifende Zusammenhänge sind in der Regel Fachbücher hilfreicher.'),
(1, '1.1.3', 'Was ist eine Bibliografie? Wofür können Bibliografien im Rahmen des wissenschaft- lichen Arbeitens hilfreich sein?', 'Bibliografien sind Verzeichnisse, die ursprünglich Literatur, heute aber auch andere Medien verzeichnen. Für die Recherche sind Bibliografien unschätzbar wichtige Hilfs- mittel, da über sie die Titelbestände aufgerufen werden können.\nBibliografien können das wissenschaftliche Arbeiten unterstützen, da sie mögliche Quellen verzeichnen. Diese Verzeichnisse sind für die Recherche sehr hilfreich, da in ihnen z. B. über die Schlagwortfunktion gezielt zu einem Thema gesucht werden kann. Ferner sind z. B. Fachbibliografien ein geeignetes Instrument zum wissenschaftlichen Arbeiten, da sie mögliche Quellen zu einem bestimmten Fach verzeichnen.'),
(1, '1.1.4', 'Wie kann nach Aufsätzen, die in Zeitschriften veröffentlicht wurden, recherchiert werden?', 'Für Zeitschriftenaufsätze gibt es spezielle Bibliografien, sog. Zeitschriftenbibliografien. Diese sind für die Recherche nach Aufsätzen zu verwenden, da diese in den meisten anderen Bibliografien gar nicht verzeichnet sind.'),
(1, '1.1.5', 'Welche Arten von Websuchmaschinen sind Ihnen bekannt?', 'Katalogsuchmaschinen und Indexsuchmaschinen.'),
(1, '1.1.5', 'Warum sollte man bei der Recherche zu einer wissenschaftlichen Arbeit auch von Websuchmaschinen Gebrauch machen?', 'Viele Internetquellen und Graue Literatur entschlüpfen den Bibliografien. Über bestimmte Websuchmaschinen verschafft man sich auch auf diese Quellen Zugriff.'),
(1, '1.1.6', 'Was ist eine Volltextdatenbank?', 'Eine Volltextdatenbank gibt, wie der Name schon sagt, nicht nur ein Verzeichnis, sondern gleich auch die vollständigen Texte wieder. Materialsuche und -beschaffung sind also an ein und derselben Stelle möglich.'),
(1, '1.1.6', 'Warum ist Wikipedia für die Recherche nicht unproblematisch?', 'Wikipedia kann bei der Recherche durchaus verwendet werden. Da hier aber die Quellen keinerlei Kontrolle unterliegen, ist deren Korrektheit nicht verlässlich. Der Recherchierende hat sich also an anderer Stelle abzusichern und sollte sich auch nur auf die verlässliche Quelle, nicht aber auf Wikipedia, stützen.'),
(1, '1.1.7', 'Welche Formen von Bibliotheken kennen Sie? Nennen Sie drei Beispiele. ', 'Öffentliche Bibliotheken, Hochschulbibliotheken und Fachbibliotheken.'),
(1, '1.1.7', 'Was ist der „Präsenzbestand“ einer Bibliothek?', 'Der Präsenzbestand einer Bibliothek verweist auf die Medien, die nur vor Ort einzusehen sind. Das Gegenstück dazu bildet der sogenannten Leihbestand einer Bibliothek.'),
(1, '1.2', 'Welche Merkmale zeichnen das sequenzielle Lesen aus? Welches Anwendungsbeispiel fällt Ihnen zu dieser Lesetechnik ein?', 'Das sequenzielle Lesen zeichnet sich dadurch aus, dass hier mit dem linearen Textfluss gelesen wird. Der Text wird damit vollständig gelesen. Sequenzielles Lesen im Rahmen von wissenschaftlichem Arbeiten bietet sich beispielsweise bei Beschreibungen von Methoden an: Nur wenn man sie stringent von vorne nach hinten liest, kann man die beschriebene Methode verstehen.'),
(1, '1.2.2', 'Was passiert in dem Schritt „Reflect“ der PQ4R-Methode?', 'Mit „Reflect“ ist das kritische Reflektieren des Textes gemeint. Der Leser nimmt die Aussagen nicht einfach hin, sondern hinterfragt sie auf ihren Wahrheitsgehalt. Dabei aktiviert er seine eigenen Erfahrungen, sein Wissen und seinen „gesunden Menschen- verstand“ und stellt die Frage: „Stimmt das (Gelesene) überhaupt?“'),
(1, '1.2.2', 'Welche Fragen helfen dabei, einen Beitrag oder einen Quelle als hilfreich für die eigene wissenschaftliche Arbeit einzustufen? Kreuzen Sie die richtigen Antworten an.\na) Enthält das Inhaltsverzeichnis Bestandteile, die sich mit „meinem“ Thema\ndecken? \nb) Sind Schlüsselbegriffe der eigenen Arbeit im Stichwortverzeichnis zu finden? \nc) Sind die Ziele, die in der Einleitung des Beitrags formuliert worden sind,\nzumindest teilweise deckungsgleich mit denjenigen „meiner“ Arbeit? \nd) Wurden die akademischen Titel der Autoren vollständig aufgeführt? ', 'Antworten a) bis c) sind korrekt. Akademische Titel sind sicherlich hilfreich, um die Qualität von Autoren einzuschätzen, doch werden sie üblicherweise in Publikationen nicht aufgeführt.'),
(1, '1.2.3', 'Worauf ist schon frühzeitig beim Lesen zu achten?', 'Es ist darauf zu achten, dass man das Gelesene irgendwie konserviert. Das kann auf unterschiedliche Weisen geschehen. So kann man die bedeutenden Stellen von einem Text in ein eigenes Dokument übertragen. Dabei sollte man darauf achten, vollständig die Literaturangaben zu übernehmen, damit man sie auch beim Verfassen der eigenen Arbeit noch zur Hand hat und exakte Quellenangaben machen kann.'),
(1, '1.2.3', 'Erläutern Sie, warum es hilfreich sein kann, für die Archivierung von Quellen und Inhalten einen Computer zu verwenden.', 'Hier sind vor allem drei Aspekte wichtig. Zum einen besteht dann die Möglichkeit, effizient und schnell in den Quellen zu navigieren und Such- und Sortierfunktionen zu nut- zen. Zum anderen können Informationen aus dem Internet und anderen Dateien direkt hineinkopiert, individuell markiert und weiterverarbeitet werden. Letzteres ist aber nur unter Angabe der Quelle im Rahmen eines direkten Zitates zulässig.\nDer dritte Vorteil einer elektronischen Quellenverwaltung ist die Möglichkeit, Hyper- textverknüpfungen anzulegen und damit inhaltlich ähnlich gelagerte Quellen zusammenzufassen.'),
(1, '1.3.1.3', 'Was könnte man als zentralen Nachteil des Kurzbelegs verstehen?', 'Bei Kurzbelegen sind wichtige Angaben zum Autor und zur Quelle nur im Literaturverzeichnis zu erkennen. Deshalb kann nur ein Kenner anhand des Kurzbelegs selbst die Relevanz einer Quelle beurteilen.'),
(1, '1.3.1.3', 'Welche der folgenden Aussagen sind korrekt? Kreuzen Sie die richtigen Antworten an: „Bei wörtlichen Zitaten dürfen ...\na) ... die Gedanken des Autors inhaltlich nicht abgeändert werden.“\nb) ... die Schriftart und Schriftgröße des originalen Zitats nicht verändert werden.“\nc) ... inhaltliche Ausführungen mit dem Hinweis (sic!) aktualisiert werden.“\nd) ... der Lesefluss verbessert werden durch eine moderne Formulierung von veralteten\nRedewendungen.“', 'Bei wörtlichen Zitaten dürfen die Gedanken eines Autors nicht verändert werden. Damit ist Aussage a.) völlig korrekt. Die Schriftart und Schriftgröße können in der Regel nicht übernommen werden, nur Hervorhebungen sind zu berücksichtigen. Aus- sage b.) ist damit falsch, ebenso c.) und d.), denn inhaltliche Veränderungen oder eine Anpassung der Formulierung ist nicht zu lässig.'),
(1, '1.3.1.3', 'Vervollständigen Sie folgende Aussage:\n„Bei der _________________ Zitierweise werden die Quellen zu Zitaten im laufenden Text in einem __________________ angegeben und zwar nur als ______________.“', 'Die Aussage muss folgendermaßen ergänzt werden:\n„Bei der angloamerikanischen Zitierweise werden die Quellen zu Zitaten im laufenden Text in einem Klammerausdruck angegeben und zwar nur als Kurzbeleg.“'),
(1, '1.3.2.1', 'Für die Quellenangaben von wissenschaftlichen Arbeiten wird oft verlangt, dass sie „zitierwürdig“ sind. Welchen Anforderungen muss wohl eine zitierwürdige Quelle grundsätzlich genügen? Kreuzen Sie die richtigen Antworten an.\n„Die verwendete Quelle muss ...\na) ... selbst ausführliche und präzise Quellenangaben enthalten, \nb) ... durch eine wissenschaftliche Argumentation bei den Sachverhalten\ngekennzeichnet sein, \nc) ... durch eine korrekte Zitierweise eine Nachvollziehbarkeit der Ausführungen\ngewährleisten, \nd) ... von einem renommierten Verlag veröffentlicht worden sein. ', 'Als Anforderungen an eine zitierwürdige Quelle werden üblicherweise die Antworten a.), b.) und c.) angesehen. Die Veröffentlichung in einem renommierten Verlag wird teilweise für Dissertationen und Forschungsberichte gefordert, doch fallen bei einer konsequenten Berücksichtigung dieses Kriteriums die meisten Internetquellen und firmeninterne Unterlagen durch das Raster.'),
(1, '1.3.2.1', 'Aus einem Buch haben Sie für Ihre wissenschaftliche Arbeit interessante Informationen aus dem Beitrag von Georg Winter übernommen. Auf den ersten Seiten des Buchs fin- den Sie die unten abgebildeten Angaben. Wie würden Sie diesen Beitrag im Literatur- verzeichnis Ihrer Arbeit korrekt angeben?', 'Die korrekte Angabe im Literaturverzeichnis wäre:\nWinter, Georg: Nachhaltigkeit – eine Herausforderung für den Unternehmer, in: Zabel, Hans-Ulrich (Hrsg.): Betriebliches Umweltmanagement – nachhaltig und inter- disziplinär, Berlin 2002, S. 45–68. oder Winter, Georg (2002): Nachhaltigkeit – eine Herausforderung für den Unternehmer, in: Zabel, Hans-Ulrich (Hrsg.): Betriebliches Umweltmanagement – nachhaltig und interdisziplinär, Berlin, S. 45–68.'),
(1, '1.3.2.1', 'Für Ihre wissenschaftliche Arbeit finden Sie in einem Studienbrief der AKAD Univer- sity zum Thema Corporate Entrepreneurship interessante Informationen, ohne Quellen- angaben, die in keinem Lehrbuch zu finden sind. Wie geben Sie den Studienbrief der AKAD University im Literaturverzeichnis korrekt an? Kreuzen Sie die richtigen Ant- worten an.\na) Kreutle, U. (o. J.): Innovative Unternehmensführung – Corporate\nEntrepreneuership, AKAD-Studienbrief UFU405, o. O. \nb) Kreutle, U.: Innovative Unternehmensführung – Corporate\nEntrepreneuership, AKAD-Studienbrief UFU405, o. O., o. J. \nc) Kreutle, U.: Innovative Unternehmensführung – Corporate Entrepreneuership, Stuttgart 2016. \nd) AKAD University (Hrsg.): Innovative Unternehmensführung – Corporate Entrepreneuership, Lektion UFU 405. ', 'Lerneinheiten der AKAD University können als Quellen für wissenschaftliche Arbeiten herangezogen werden, sofern keine Originalquellen zu identifizieren sind. Diese Vor- aussetzung im vorliegenden Fall gegeben.\nDie Antworten a.) und b.) sind korrekt. Beide Formen der Angabe des Erscheinungsjahr können verwendet werden. Die Angabe sollte jedoch einheitlich sein.\nBei Antwort c.) wird vermutet, dass der Erscheinungsort Stuttgart und das Erschei- nungsjahr 2016 ist. Diese Angaben sind nicht ganz falsch, beruhen aber auf einer Ver- mutung. Der Zusatz „AKAD-Lerneinheit“ sollte angegeben werden, um zu verdeutli- chen, dass diese Quelle im Buchhandel nicht erhältlich ist.\nAntwort d.) entspricht nicht den Vorgaben der AKAD University.'),
(1, '1.3.2.2', 'Warum ist die Verwendung von Informationen aus der Internetplattform Wikipedia in wissenschaftlichen Arbeiten verpönt?', 'Auch an digitale Quellen werden die Anforderungen gestellt, die für „zitierwürdige“ Publikationen gelten. Dazu gehört neben der Zitierweise und den Quellenangaben sowie der wissenschaftlichen Argumentation auch, dass der Autor eindeutig zu identifi- zieren ist. In den Beiträgen auf Wikipedia sind jedoch die Autoren nicht zu erkennen, so dass die Qualität der Beiträge nur von Experten eingeschätzt werden kann.'),
(1, '1.3.2.2', 'Bei Ihren Recherchen zum Thema Wertschöpfungskette stoßen Sie auf der Internetseite des Gabler Wirtschaftslexikon auf eine Grafik, die zwischen Primär- und Sekundärakti- vitäten unterscheidet. Als Quelle dieser Abbildung ist „Porter“ angegeben. Sie möchten die Abbildung in Ihre Arbeit übernehmen. Ein Autor ist für den Artikel nicht aufgeführt. Wie geben Sie diese Quelle im Literaturverzeichnis an?', 'Diese Frage etwas tückisch. Die meisten Studenten würde einfach angeben: o.V.: Wertschöpfungskette, in Gabler Wirtschaftslexikon (Hrsg.), exakte URL (Zugriffsdatum). Diese Angabe ist jedoch nicht ganz korrekt. Genau genommen stammt die Grafik näm- lich von Porter. Also müsste die Originalquelle recherchiert werden. Michael E. Porter veröffentlichte diese Grafik 1985 in seinem Buch Competitive Advantage. Also müsste angegeben werden: Porter, M. E.: Competitive Advantage, New York 1985. Die Beschaffung dieses Werks ist jedoch mit einem großen Aufwand verbunden. Es ist vor mehr wie 15 Jahren erschienen, so dass der Aufwand nicht mehr zumutbar ist. Also wäre zu zitieren: Porter, 1985, zitiert nach: o.V.: Wertschöpfungskette, in Gabler Wirt- schaftslexikon (Hrsg.), exakte URL (Zugriffsdatum).\n'),
(1, '1.3.2.2', 'Dürfen Informationen aus einem Podcast, der von einem großen Konzern betrieben wird, in eine wissenschaftliche Arbeit übernommen werden?', 'Ja, gerade große Konzerne betreiben oft Podcasts mit Experten. Selbst wenn die Sprecher keine ausgewiesenen Experten sein sollten, ist davon auszugehen, dass ein großer Konzern nur fundierte Informationen über dieses Medium weitergibt. Meistens sind keine Sprecher oder Titel bei Podcasts erkennbar, so dass bei einem unternehmensbezogenen Podcast die Angabe der URL samt Zugriffsdatum genügen müsste. Manche Berater oder Coaches geben jedoch regelmässig Podcasts heraus, mit Titel und mit Publikationsdaten, so dass die Quellengaben analog zum Hörbuch gestaltet werden können.'),
(1, '1.3.2.2', 'Eine Studentin der AKAD University stellt Ihnen folgende Frage:\n„Für meine jetzige Hausarbeit zum Kompensationsmodell von Kehr habe ich mir auf Youtube ein Video mit einem seiner Vorträge angeschaut und teilweise Dinge über- nommen. Kann ich den Link zum Video einfach als Quelle angeben oder wie müsste man das machen (oder überhaupt)?“\nWas antworten Sie ihr?', 'Informationen aus einem Vortrag eines Experten, der per Internet zugreifbar ist, können selbstverständlich in einer wissenschaftlichen Arbeit verwendet werden. Die Angabe der URL genügt jedoch nicht. Nach Möglichkeit sollten für einen Videoclip folgende Angaben im Literaturverzeichnis gemacht werden: Name des Autors oder des Regis- seurs oder Username: Titel des Clips, exakte URL (Zugriffsdatum). Verwendete Sequenz in 00:00:00.'),
(1, '1.3.2.4', 'Für Ihre Abschlussarbeit zur Unternehmenskultur der Bausparkasse Schwäbisch Hall haben Sie das Leitbild des Unternehmens recherchiert. Auf der Vorder- und Rückseite des gedruckten Exemplars finden Sie folgende Angaben:\nWelche Gestaltung im Literatur- bzw. Quellenverzeichnis wäre für dieses Dokument korrekt? Kreuzen Sie die richtige Antwort an:\na) O. V.: Unternehmensleitbild Schwäbisch Hall, Bausparkasse Schwäbisch Hall (Hrsg.), Schwäbisch Hall 2005. \nb) Bausparkasse Schwäbisch Hall (Hrsg.): Unternehmensleitbild Schwäbisch Hall,\no. O. 2005. \nc) Interne Unterlagen: Bausparkasse Schwäbisch Hall, Unternehmensleitbild, Stand Januar 2005. d) Unternehmensleitbild der Bausparkasse Schwäbisch Hall, Stand 2005. ', 'Bei diesem Leitbild handelt es sich um „Graue Literatur“. Sie können für dieses Doku- ment entscheiden, ob Sie es als interne Unterlage oder als Monografie behandeln wollen. Wenn Sie das Leitbild als Monografie zitieren, dann sind die Antworten a) und b) korrekt. Sowohl die Zitierweise mit „o. V.“ ist möglich wie auch diejenige mit der Bau- sparkasse als Herausgeber. Der Erscheinungsort Schwäbisch Hall kann allerdings nur vermutet werden.\nEntscheiden Sie sich, das Leitbild als „interne Unterlage“ zu zitieren, dann ist Antwort c) korrekt.'),
(1, '1.3.2.4', 'In einer Studie zur Rolle der Menschenrechte im Kontext von Corporate Social Respon- sibility beziehen Sie sich auf Empfehlungen der Internationalen Arbeitsorganisation (ILO). Das Übereinkommen Nr. 182 zu Verbot und unverzüglichen Maßnahmen zur Beseitigung der schlimmsten Formen der Kinderarbeit ist von der Bundesrepublik Deutschland ratifiziert worden. Gestalten Sie die Quellenangaben für dieses Dokument.', 'Durch die Ratifizierung der Empfehlung der ILO ist diese in Deutschland verbindlich geworden. Sie kann damit wie ein Gesetz oder eine Norm zitiert werden, entweder ein- fach mit „ILO-Kernarbeitsnormen“ oder „ILO-Übereinkommen Nr. 182“.'),
(1, '1.3.2.4', 'Folgende Quellenangabe soll als Kurzbeleg gestaltet werden: „Lin-Hi, Nick: Greenwas- hing, hrsg. von: Gabler Wirtschaftslexikon, http://wirtschaftslexikon.gabler.de/Defini- tion/greenwashing.html (Zugriff am 6.3.2017)“. Welche der folgenden Varianten für den Kurzbeleg wäre korrekt? Kreuzen Sie die richtige Antwort an:\na) Gabler, 2017.\nb) Lin-Hi (2017), Internetquelle.\nc) Lin-Hi, Greenwashing, Internetquelle.\nd) Gablers Wirtschaftslexikon: Internetquelle.', 'Als Kurzbeleg korrekt sind die Antworten b) und c).'),
(1, '1.3.3.2', 'Zählen Sie auf, was formell beim Gebrauch von Tabellen und Abbildungen zu beachten ist.', 'Beim Gebrauch von Tabellen und Abbildungen sollte folgendes beachtet werden: Sie sollten einheitlich sein, sie sind mit einem Rahmen zu versehen, einer fortlaufenden Nummerierung und einem Titel, wobei diese in einem am Anfang der Arbeit stehenden gesonderten Verzeichnis aufzuführen sind. Es sollten keine überflüssigen Bestandteile (wie integrierte Überschriften) vorkommen, gleichwohl sollte das Element sich von selbst erklären und muss daher die relevanten Informationen (Spaltenüberschriften, Legenden und dergleichen) vorweisen. Gehen Tabellen und Abbildungen über mehrere Seiten, ist u.a. darauf zu achten, dass „(Fortsetzung)“ auf der nachfolgenden Seite steht, der Titel und ggf. (bei Tabellen) die Spaltenüberschriften wiederholt werden. Ferner müssen Quellenangaben gemacht werden.'),
(1, '1.3.3.2', 'Nennen Sie die präzisen Hinweise der Quellenangaben, die bei Abbildungen (und ggf. Tabellen) gemacht werden müssen bzw. können. ', '„Vergleiche“, „In Anlehnung an“ und (nicht zwingend) „Eigener Entwurf“.'),
(1, '1.3.4.2', 'Mit welchen Stilmitteln kann die Genauigkeit von Aussagen unterstrichen werden?', 'Die Genauigkeit von Aussagen kann durch die Kombination mehrerer Stilmittel unterstrichen werden, insbesondere durch eine objektive, folgerichtige Argumentation mit klar definierten Fachausdrücken.'),
(1, '1.3.4.2', 'In einem Assigment zur Rolle von Lesestrategien findet sich folgende Passage:\n„Lesestrategien unterstützen beim Lernen z. B. durch Aufzeigen von Zeitfressern, Übungen zur Konzentrationssteigerung sowie Schaffen einer angenehmen Atmo- sphäre. Im Laufe der Zeit entwickelt man seinen eigenen Lerncharakter, den man immer weiter ausbauen kann. Meine persönliche Lesemethode ist die PQ4R-Methode. Ich setze sie hauptsächlich für Fächer ein, die auf den ersten Blick besonders schwer erscheinen oder in denen ich kaum Vorkenntnisse habe. Im ersten Augenblick erkennt man keine großartige Verbesserung. Wenn man aber zu einem Thema befragt wird, das mit dieser Methode gelernt wurde, erinnert man sich oftmals an die beispielsweise bunte Gestaltung der Arbeitsblätter, die zerpflückten Thematiken oder die Grafiken und Skizzen, mit denen man sich bei diesem Thema beschäftigt hat, und kommt so zu einem positiven Ergebnis.“\nWelche Anforderungen an den Stil einer wissenschaftlichen Arbeit werden in dieser Passage nicht berücksichtigt?', 'In der Passage berücksichtigt der Autor folgende Anforderungen nicht:\n- Objektivität: subjektive Wertungen und Erfahrungen des Autors werden mit begrif- fen wie „meine“ oder “ich“ erläutert.\n- Folgerichtigkeit: es werden Behauptungen aufgestellt, aber nicht folgerichtig argu- mentiert;\n- Klarheit: umgangssprachliche Formulierungen wie „keine großartige Verbesserung“ oder „Zeitfresser“ sollten vermieden werden;\n- Dichte: die Erläuterungen zu der „bunten Gestaltung der Arbeitsblätter“, den „zer- pflückten Thematiken“ und „Grafiken und Skizzen“ hätten kompakter gestaltet werden können.'),
(1, '2.3', 'Beurteilen Sie die beiden folgenden Themen für Abschlussarbeiten anhand der Anfor- derungen an einen Titel für eine wissenschaftliche Arbeit. Handelt es sich dabei um „gute“ Themen?\na) „Das neue Pfandbriefgesetz – Vergleich zwischen alter und neuer Gesetzgebung und die Auswirkungen auf die Bayerische Landesbank“\nb) Der nächste Schritt ins Unternehmerglück – was folgt nach DIN EN ISO 9001? EFQM – Selbstbewertung am Beispiel der Daimler Facility Service GmbH\nc) Analyse des Marktumfeldes des globalen Vertriebs der SIEMENS AG und Ableitung einer Personalstrategie für alle Geschäftsbereiche', 'Bei den beiden Themen handelt es sich nicht um „gute“ Themen:\nAd. a): die Einzigartigkeit ist mit der Formulierung „.. die Bayerische Landesbank“ sicherlich gewährleistet. Eine konzeptionelle Bearbeitung nur sehr eingeschränkt möglich, da vor allem die Gesetze beschrieben sowie die Auswirkungen erläutert werden. Die Formulierung ist präzise. Abkürzungen wurden nicht verwendet.\nAd. b): die Einzigartigkeit ist mit der Formulierung „... am Beispiel der Daimler Facility Service GmbH“ sicherlich gewährleistet. Eine konzeptionelle Bearbeitung ist durch die geforderte Selbstbewertung möglich. Der Titel ist wenig präzise, da nicht eindeutig zu erkennen ist, was in dieser Studie untersucht werden soll. Abkürzungen wie EFQM oder DIN EN ISO erschweren das Verständnis.\nAd. c): der Bezug auf die Siemens AG gewährleistet die Einzigartigkeit der Untersuchung. Mit der Analyse des Marktumfeldes und der Ableitung einer Personalstrategie ist eine eigenständige konzeptionelle Bearbeitung möglich. Allerdings ist diese Problemstellung für eine Abschlussarbeit viel zu breit. Die Analyse des gesamten Umfeldes eines Weltkonzerns sowie die Entwicklung einer Personalstrategie für sämtliche Ge- schäftsbereiche sprengen den Rahmen einer Abschlussarbeit bei weitem. Die Formulierung ist präzise. Die Abkürzung „AG“ kann als allgemein bekannt vorausgesetzt werden.'),
(1, '2.4.1', 'Welchen Zweck erfüllt das Inhaltsverzeichnis einer wissenschaftlichen Arbeit für den Leser/für den Verfasser?', 'Für den Leser erfüllt das Inhaltsverzeichnis den Zweck einer Annäherung an den ihm (noch) unbekannten Text und bietet eine Orientierungshilfe. Außerdem bietet das Verzeichnis die Möglichkeit, den „roten Faden“ der Arbeit nachzuvollziehen, was auch für den Verfasser der Arbeit während der Textgenese eine Möglichkeit zur Selbstkontrolle bietet. Ein wesentlicher Maßstab einer wissenschaftlichen Arbeit ist nämlich der logische Aufbau und die sinnvolle Abfolge von Kapiteln und Abschnitten (Gliederung).'),
(1, '2.4.1', 'Welche Arten von Gliederungssystemen gibt es?', 'Es gibt das alphanumerische und das numerische Inhaltsverzeichnis.'),
(1, '2.4.2.4', 'Erläutern Sie, was unter Problemstellung zu verstehen ist. Sagen Sie auch, was nicht damit gemeint ist.', 'Die Problemstellung zeigt auf, warum ein Thema nicht trivial ist und damit untersuchungswürdig. Hier werden die entscheidenden Fragen gestellt, aus denen dann das Zielsystem der Arbeit abgeleitet wird. Unter Problemstellung sollte nicht die Relevanz des Themas verstanden werden. Dabei handelt es sich um etwas anderes, die Bedeutsamkeit eines Themas nämlich, aber nicht dessen Problematik.'),
(1, '2.4.2.4', 'Was ist eine Zielhierarchie?', 'Eine Zielhierarchie ist eine Zielordnung mit Rangfolge. In der Regel werden hier meh- rere Zielebenen einem Oberziel untergeordnet.'),
(1, '2.4.2.4', 'Sollte im Abschnitt „Aufbau der Arbeit“ das Inhaltsverzeichnis nacherzählt werden?', 'Das Inhaltsverzeichnis sollte nicht nacherzählt werden. Vielmehr geht es in diesem letzten Abschnitt der Einleitung darum, den Aufbau der Arbeit als in sich stimmig und damit schlüssig darzustellen.'),
(1, '2.4.3.2', 'Welche Begriffe sollten im Rahmen der Grundlagen definiert werden?', 'Es sollten nur solche Begriffe definiert werden, die von zentraler Bedeutung für die Arbeit sind und über die es kein einheitliches Begriffsverständnis in der Literatur gibt – die also Bedarf für eine Definition aufweisen.'),
(1, '2.4.3.2', 'Werden in den Grundlagen Theorien dargestellt? ', 'In der Regel geht es hier nicht darum, Theorien darzustellen. Das ist meist auch gar nicht im Rahmen der Grundlagen zu leisten. In den meisten Arbeiten ist auch gar nicht danach gefragt. Da geht es um ein konkretes betriebliches Problem, dem zu begegnen ist.'),
(1, '2.4.4', 'Welche Formen lassen sich im Rahmen der Konzeptentwicklung unterscheiden?', 'Bei der Konzeptentwicklung lassen sich die Neuentwicklung und die Optimierung unterscheiden. Hierbei kann die Optimierung auch als selektive Neuentwicklung ver- standen werden.'),
(1, '2.4.4', 'Warum ist die ökonomische Bewertung einer Problemlösung im Rahmen einer wissen- schaftlichen Arbeit häufig problematisch?', 'Für die ökonomische Bewertung werden meist viele Daten aus dem Unternehmen benötigt, welche in der Regel nicht zur Verfügung stehen. Daher empfiehlt es sich, nur das grundlegende Vorgehen bei der ökonomischen Bewertung darzustellen.'),
(1, '2.4.4', 'Ist auch für ein Assignment mit seinen acht bis zwölf Seiten ein Grundlagen- und ein Hauptteil erforderlich?', 'Ja, auch in einem Assignment sind zunächst die zentralen Begriffe zu klären und die themenrelevanten Grundlagen zu erarbeiten, um dann den Kern der Themenstellung zu bearbeiten.'),
(1, '2.4.5', 'Nennen Sie die vier Punkte, die im Schluss der Arbeit behandelt werden sollten.', 'Im abschließenden Kapitel sollte auf jeden Fall die Zusammenfassung der wesentlichen Arbeitsergebnisse enthalten sein sowie die kritische Würdigung der eigenen Vorgehens- weise bzw. der eigenen Ergebnisse. Eine ideale Abrundung ist es, die Arbeit mit einem Ausblick auf die zukünftigen Entwicklungen abzurunden. Die Erörterung der relevanten Erfolgsfaktoren ist nur bei Bedarf erforderlich.'),
(1, '2.4.5', 'In einem Assignment wird als „Zusammenfassung“ folgende Passage präsentiert:\n„Ziel der Arbeit war es, fünf konkrete Hypothesen über die Auswirkungen der Meno- pause bei Frauen auf die Leistungsfähigkeit im Beruf zu entwickeln. Dies ist vor dem Hintergrund der notwendigen Begriffsdefinition von Hypothesen und Menopause sowie der Darstellung erforderlicher Grundlagen eigenständig erfolgt.\nKritisch ist zu beachten, dass es sich bei der Problemstellung um ein diagnostisches Forschungsproblem handelt. Der Umfang der Arbeit lässt es jedoch nicht zu, die Fülle an Wissen, welches über den Sachverhalt der Menopause bereits existiert, in Gänze abzubilden und kritisch zu diskutieren. Des Weiteren stellt die Problemstellung ein vorwiegend medizinisches bzw. psychologisches Themengebiet dar, für welches die Fachexpertise des Autors für eine objektive Bewertung der aufgestellten Hypothesen nicht ausreichend ist. Dennoch konnten die geforderten fünf Hypothesen definiert und somit das Ziel der Arbeit vollumfänglich erreicht werden.“\nBeurteilen Sie diese Zusammenfassung, indem Sie eine Schulnote dafür vergeben und begründen Sie Ihre Einschätzung.', 'Mit der Formulierung „Ziel der Arbeit war es ...“ wird das finale Ziel wieder aufgegrif- fen. Dieser Bezug zum Finalziel der Studie ist positiv zu würdigen. Der gesamte Grundlagenteil wird dann jedoch in einem einzigen Satz zusammengefasst, der zudem wenig aussagefähig ist. Eine Dokumentation der Ergebnisse im Hauptteil der Studie fehlt. Damit fällt die Zusammenfassung viel zu kurz und zu oberflächlich aus.\nDie kritische Würdigung der eigenen Studie ist grundsätzlich gut gelungen. Der Ver- weis darauf, dass die Themenstellung einen medizinischen Charakter habe, die das Wissen des Autors überfordere ist jedoch nicht sinnvoll. Zum einen stellt sich dann die Frage, weshalb der Autor das Thema ausgewählt hat und zum zweiten ist das eigene beschränkt Fachwissen kein objektives Argument für eine Beschränkung der Thematik.\nSchließlich übernimmt der Autor mit der Formulierung „Ziel vollumfänglich erreicht“ die Aufgabe des Gutachters, ohne diese Behauptung differenziert zu begründen. Insgesamt ist diese Zusammenfassung gerade noch zielführend, so dass ein „ausreichend“ im Sinne von 50 Prozent der verfügbaren Punkte dafür vergeben werden kann.'),
(1, '3.1', 'Wann ist das Layout vorzunehmen und wozu führt das Layout?', 'Das Layout sollte zuletzt vorgenommen werden, nachdem das Lektorat beendet worden ist. Das Layout führt zu einem ordentlichen, leserfreundlichen Erscheinungsbild, das\nz. B. bestehende formale Vorgaben an die wissenschaftlichen Arbeiten erfüllt.'),
(1, '3.1 ', 'In welche Bereiche kann das Verbesserungspotenzial einer Arbeit unterteilt werden?', 'Gedankenführung, Gedankenwahl, Gedankendarstellung. Richtigkeit der Angaben, Richtigkeit der Sprache.'),
(2, '1', 'Was listet das Inventar auf?', 'Das Inventar listet alle Vermögens- und Schuldenwerte des Unternehmens in Staffelform auf.'),
(2, '1', 'Was zeigt die Aktivseite der Bilanz?', 'Die Aktivseite der Bilanz zeigt, wie das Kapital des Unternehmens investiert wird.'),
(2, '1', 'Was gehört zum Anlagevermögen?', 'Zum Anlagevermögen gehören langlebige Vermögenspositionen wie Gebäude, technische Anlagen, Maschinen und der Fuhrpark.'),
(2, '1', 'Was umfasst das Umlaufvermögen?', 'Das Umlaufvermögen umfasst Vermögenswerte, die weniger lange im Unternehmen bleiben, wie Vorräte, Forderungen und Kassenbestand.'),
(2, '1', 'Was steht auf der Passivseite der Bilanz?', 'Auf der Passivseite stehen die Passiva, die zeigen, woher das Kapital des Unternehmens stammt.'),
(2, '1', 'Was ist Eigenkapital?', 'Eigenkapital ist das Kapital, das aus eigenen Mitteln des Unternehmens aufgebracht wird.'),
(2, '1', 'Was versteht man unter Fremdkapital?', 'Fremdkapital wird von außen zur Verfügung gestellt, z.B. durch Banken oder Lieferanten.'),
(2, '1', 'Was beinhaltet das Fremdkapital?', 'Fremdkapital umfasst Darlehen, Lieferantenkredite und Verbindlichkeiten gegenüber dem Finanzamt.'),
(2, '1', 'Wie wird die Aktivseite der Bilanz gegliedert?', 'Die Aktivseite wird nach der Liquidität gegliedert, beginnend mit dem Anlagevermögen.'),
(2, '1', 'Wie ist die Passivseite der Bilanz gegliedert?', 'Die Passivseite ist nach Fälligkeit gegliedert, wobei das Eigenkapital am längsten im Unternehmen bleibt.'),
(2, '1', 'Was entspricht der Summe der Aktiva?', 'Die Summe der Aktiva entspricht der Summe der Passiva, also dem Gesamtkapital.'),
(3, '1', 'Was versteht man unter einem Service?', 'Service ist ein Oberbegriff für jegliche Art von Dienstleistungen, egal ob digital oder nicht.'),
(3, '1', 'Wie werden digitale Services definiert?', 'Digitale Services sind Services, die digital ausgeführt werden.'),
(3, '1', 'Was sind Beispiele für digitale Dienstleistungen?', 'Beispiele sind digitale Beratung oder digitale Finanzdienstleistungen.'),
(3, '1', 'Was sind e-Services?', 'e-Services sind digitale Services, die den eigentlichen Service unterstützen, wie z.B. ein Konfigurationssystem oder ein Chatbot.'),
(3, '1', 'Wie unterscheiden sich Produkte von Services?', 'Produkte umfassen sowohl Sachgüter als auch Dienstleistungen, alles, was auf Märkten verkauft wird.'),
(3, '1', 'Was sind hybride Produkte?', 'Hybride Produkte bestehen aus Sachgut und Dienstleistung, oft ergänzt durch e-Services.'),
(3, '1', 'Was bedeutet "Dienstleistung als Potenzial"?', 'Es bedeutet, dass Dienstleistungen die Fähigkeit definieren, einen Nutzen für den Kunden zu erstellen.'),
(3, '1', 'Wie wird eine Dienstleistung als Prozess verstanden?', 'Als Prozess ist eine Dienstleistung ein Verrichtungsprozess an einem externen Faktor.'),
(3, '1', 'Was bedeutet "Dienstleistung als Produkt"?', 'Hier definiert sich die Dienstleistung über ihr immaterielles Ergebnis, welches einen Wert für den Kunden darstellt.'),
(3, '1', 'Wie beeinflusst die Digitalisierung traditionelle Geschäftsmodelle?', 'Die Digitalisierung verändert traditionelle Geschäftsmodelle, indem sie neue Möglichkeiten für Serviceangebote und Kundeninteraktion schafft.'),
(3, '1', 'Was ist ein digitales Produkt?', 'Ein digitales Produkt ist ein immaterielles Gut, das digital erstellt, verteilt und genutzt wird.');
