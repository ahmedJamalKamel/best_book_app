import 'package:best_book_app/get/author_getx_controller.dart';
import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/get/topic_getx_controller.dart';
import 'package:best_book_app/models/authors.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/models/topics.dart';
import 'package:best_book_app/prefs/shared_pref_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {

    if(!SharedPrefController().islogin){
      addDataTopic();
      addDataGBook();
      addDataAuthor();
      addDataBiClaBook();
      addDataBiActionBook();
      addDataBiDramaBook();
      addDataBiHumorBook();
      addDataBiWorldLiteratureBook();
      addDataBiPoetryBook();
      addDataBookforJohnGrisham();
      addDataBookforMitchAlbom();
      addDataBookforRachelCamposDuffy();
      addDataBookforBrandon();
    }

    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context,!SharedPrefController().islogin?'/select_topics_screen':'/main_screen');
    });
  }

  void addDataTopic() async {
    Topics c = Topics();
    c.name = "Action & Adventure";
    c.image = "imageTopic/actionTopic.png";
    c.selected=0;
    await TopicGetxController.to.createContact(c);
    ////

    Topics c5 = Topics();
    c5.name = "Drama";
    c5.image = "imageTopic/Dramas.png";
    c5.selected=0;
    await TopicGetxController.to.createContact(c5);

    Topics c2 = Topics();
    c2.name = "Classics";
    c2.image = "imageTopic/Classics.png";
    c2.selected=0;
    await TopicGetxController.to.createContact(c2);
    ////Horror

    Topics c4 = Topics();
    c4.name = "Humor";
    c4.image = "imageTopic/HorrorTopic.png";
    c4.selected=0;
    await TopicGetxController.to.createContact(c4);

    Topics c7 = Topics();
    c7.name = "Poetry";
    c7.image = "imageTopic/Poetry.png";
    c7.selected=0;
    await TopicGetxController.to.createContact(c7);

    Topics c8 = Topics();
    c8.name = "World Literature";
    c8.image = "imageTopic/WorldLiterature.png";
    c8.selected=0;
    await TopicGetxController.to.createContact(c8);

  }
  void addDataGBook() async {
    BookAll c=BookAll();
    c.name="In Search of Lost Time";
    c.pageNumber="498";
    c.dateCreated="November 30, 2004";
    c.description="Marcel Proust’s In Search of Lost Time is one of the most entertaining reading experiences in any language and arguably the finest novel of the twentieth century. But since its original prewar translation there has been no completely new version in English. Now, Penguin Classics brings Proust’s masterpiece to new audiences throughout the world, beginning with Lydia Davis’s internationally acclaimed translation of the first volume, Swann’s Way.\nSwann's Way is one of the preeminent novels of childhood: a sensitive boy's impressions of his family and neighbors, all brought dazzlingly back to life years later by the taste of a madeleine. It also enfolds the short novel \"Swann in Love,\" an incomparable study of sexual jealousy that becomes a crucial part of the vast, unfolding structure of In Search of Lost Time. The first volume of the work that established Proust as one of the finest voices of the modern age—satirical, skeptical, confiding, and endlessly varied in his response to the human condition—Swann's Way also stands on its own as a perfect rendering of a life in art, of the past recreated through memory.";
    c.nameTopic="World Literature ";
    c.nameAuthor="Marcel Proust";
    c.image="imagGratBook/InSearchofLostTimeby.png";
    c.language="English";
    c.grate=1;
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c1=BookAll();
    c1.name="Ulysses";
    c1.pageNumber="708 ";
    c1.dateCreated="May 23, 2014";
    c1.description="Beautifully illustrated with atmospheric paintings by renowned artists, James Joyce's epic Modernist novel is a monumental work of genius that has yet to be surpassed. Its 265,000 words trace the experiences of a handful of fascinating characters during a single day in 1904. Much of the novel is written in stream of consciousness style that was a radical break from what had come before and is both challenging and immensely rewarding for readers. Joyce brilliantly managed the seemingly impossible task of putting the human thought process onto paper. \n* This meticulous digital edition from Heritage Illustrated Publishing is a faithful reproduction of the original text and is enhanced with images of classic works of art carefully selected by our team of professional editors.";
    c1.nameTopic="Classics ";
    c1.nameAuthor="James Joyce";
    c1.image="imagGratBook/Ulysses.png";
    c1.language="English";
    c1.grate=1;
    await BookAllGetxController.to.createContact(c1);
    ////
    BookAll c2=BookAll();
    c2.name="Don Quixote";
    c2.pageNumber="940";
    c2.dateCreated="January 1, 2003";
    c2.description="Alonso Quixano, a retired country gentleman in his fifties, lives in an unnamed section of La Mancha with his niece and a housekeeper. He has become obsessed with books of chivalry, and believes their every word to be true, despite the fact that many of the events in them are clearly impossible. Quixano eventually appears to other people to have lost his mind from little sleep and food and because of so much reading.";
    c2.nameTopic="Classics ";
    c2.nameAuthor="Miguel de Cervantes";
    c2.image="imagGratBook/DonQuixote.png";
    c2.language="English";
    c2.grate=1;
    await BookAllGetxController.to.createContact(c2);
    ////
    BookAll c3=BookAll();
    c3.name="One Hundred Years of Solitude";
    c3.pageNumber="417 ";
    c3.dateCreated="February 21, 2006";
    c3.description="One of the 20th century's enduring works, One Hundred Years of Solitude is a widely beloved and acclaimed novel known throughout the world, and the ultimate achievement in a Nobel Prize–winning career. The novel tells the story of the rise and fall of the mythical town of Macondo through the history of the Buendía family. It is a rich and brilliant chronicle of life and death, and the tragicomedy of humankind. In the noble, ridiculous, beautiful, and tawdry story of the Buendía family, one sees all of humanity, just as in the history, myths, growth, and decay of Macondo, one sees all of Latin America. Love and lust, war and revolution, riches and poverty, youth and senility — the variety of life, the endlessness of death, the search for peace and truth — these universal themes dominate the novel. Whether he is describing an affair of passion or the voracity of capitalism and the corruption of government, Gabriel García Márquez always writes with the simplicity, ease, andpurity that are the mark of a master. Alternately reverential and comical, One Hundred Years of Solitude weaves the political, personal, and spiritual to bring a new consciousness to storytelling. Translated into dozens of languages, this stunning work is no less than an accounting of the history of the human race.";
    c3.nameTopic="Genre Fiction ";
    c3.nameAuthor="Gabriel Garcia Marquez";
    c3.image="imagGratBook/OneHundredYearsOfSolitude.png";
    c3.language="English";
    c3.grate=1;
    await BookAllGetxController.to.createContact(c3);
    ////
    BookAll c4=BookAll();
    c4.name="The Great Gatsby";
    c4.pageNumber="180 ";
    c4.dateCreated="September 30, 2004";
    c4.description="The novel chronicles an era that Fitzgerald himself dubbed the \"Jazz Age\". Following the shock and chaos of World War I, American society enjoyed unprecedented levels of prosperity during the \"roaring\" 1920s as the economy soared. At the same time, Prohibition, the ban on the sale and manufacture of alcohol as mandated by the Eighteenth Amendment, made millionaires out of bootleggers and led to an increase in organized crime, for example the Jewish mafia. Although Fitzgerald, like Nick Carraway in his novel, idolized the riches and glamor of the age, he was uncomfortable with the unrestrained materialism and the lack of morality that went with it, a kind of decadence.";
    c4.nameTopic="Genre Fiction ";
    c4.nameAuthor="F. Scott Fitzgerald";
    c4.image="imagGratBook/TheGreatGatsby.png";
    c4.language="English";
    c4.grate=1;
    await BookAllGetxController.to.createContact(c4);
    ////
    BookAll c5=BookAll();
    c5.name="Moby Dick";
    c5.nameAuthor="Herman Melville";
    c5.nameTopic="Action & Adventure ";
    c5.pageNumber="544  ";
    c5.dateCreated="December 5, 1999";
    c5.description="First published in 1851, Melville's masterpiece is, in Elizabeth Hardwick's words, \"the greatest novel in American literature.\" The saga of Captain Ahab and his monomaniacal pursuit of the white whale remains a peerless adventure story but one full of mythic grandeur, poetic majesty, and symbolic power. Filtered through the consciousness of the novel's narrator, Ishmael, Moby-Dick draws us into a universe full of fascinating characters and stories, from the noble cannibal Queequeg to the natural history of whales, while reaching existential depths that excite debate and contemplation to this day.";
    c5.image="imagGratBook/MobyDick.png";
    c5.language="English";
    c5.grate=1;
    await BookAllGetxController.to.createContact(c5);
    ////
    BookAll c6=BookAll();
    c6.name="War and Peace";
    c6.nameAuthor="Leo Tolstoy";
    c6.nameTopic="Genre Fiction ";
    c6.pageNumber="1296 ";
    c6.dateCreated="December 2, 2008";
    c6.description="Epic in scale, War and Peace delineates in graphic detail events leading up to Napoleon's invasion of Russia, and the impact of the Napoleonic era on Tsarist society, as seen through the eyes of five Russian aristocratic families.";
    c6.image="imagGratBook/WarandPeace.png";
    c6.language="English";
    c6.grate=1;
    await BookAllGetxController.to.createContact(c6);
    ////
    BookAll c7=BookAll();
    c7.name="Hamlet ";
    c7.nameAuthor="William Shakespeare";
    c7.nameTopic="Dramas ";
    c7.pageNumber="342 ";
    c7.dateCreated="July 1, 1992";
    c7.description="The Tragedy of Hamlet, Prince of Denmark, or more simply Hamlet, is a tragedy by William Shakespeare, believed to have been written between 1599 and 1601. The play, set in Denmark, recounts how Prince Hamlet exacts revenge on his uncle Claudius, who has murdered Hamlet's father, the King, and then taken the throne and married Gertrude, Hamlet's mother. The play vividly charts the course of real and feigned madness—from overwhelming grief to seething rage—and explores themes of treachery, revenge, incest, and moral corruption.";
    c7.image="imagGratBook/Hamlet.png";
    c7.language="English";
    c7.grate=1;
    await BookAllGetxController.to.createContact(c7);
    ////
    BookAll c8=BookAll();
    c8.name="The Odyssey ";
    c8.nameAuthor="Homer ";
    c8.nameTopic="Poetry ";
    c8.pageNumber="592 ";
    c8.dateCreated="November 7, 2017";
    c8.description="The Odyssey is one of two major ancient Greek epic poems attributed to Homer. It is, in part, a sequel to the Iliad, the other work traditionally ascribed to Homer. The poem is fundamental to the modern Western canon. Indeed it is the second—the Iliad being the first—extant work of Western literature. It was probably composed near the end of the eighth century BC, somewhere in Ionia, the Greek-speaking coastal region of what is now Turkey. The poem mainly centers on the Greek hero Odysseus (or Ulysses, as he was known in Roman myths) and his long journey home following the fall of Troy. It takes Odysseus ten years to reach Ithaca after the ten-year Trojan War. In his absence, it is assumed he has died, and his wife Penelope and son Telemachus must deal with a group of unruly suitors, the Mnesteres or Proci, competing for Penelope's hand in marriage.";
    c8.image="imagGratBook/TheOdyssey.png";
    c8.language="English";
    c8.grate=1;
    await BookAllGetxController.to.createContact(c8);
    ////
    BookAll c9=BookAll();
    c9.name="Madame Bovary";
    c9.nameAuthor="Gustave Flaubert ";
    c9.nameTopic="World Literature";
    c9.pageNumber="432 ";
    c9.dateCreated="December 14, 1991";
    c9.description="For daring to peer into the heart of an adulteress and enumerate its contents with profound dispassion, the author of Madame Bovary was tried for \"offenses against morality and religion.\" What shocks us today about Flaubert's devastatingly realized tale of a young woman destroyed by the reckless pursuit of her romantic dreams is its pure artistry: the poise of its narrative structure, the opulence of its prose (marvelously captured in the English translation of Francis Steegmuller), and its creation of a world whose minor figures are as vital as its doomed heroine. In reading Madame Bovary, one experiences a work that remains genuinely revolutionary almost a century and a half after its creation.";
    c9.image="imagGratBook/MadameBovary.png";
    c9.language="English";
    c9.grate=1;
    await BookAllGetxController.to.createContact(c9);
    ////

  }
  void addDataAuthor()async{
    Authors c = Authors();
    c.name = "Brandon Stanton";
    c.numberBook="8";
    c.image = "imageAuthor/BrandonStanton.png";
    c.des="BRANDON STANTON is the creator of the #1 New York Times bestselling book Humans of New York as well as the children's book, Little Humans. He was a 2013 Time Magazine \"30 people under 30 changing the world,\" an ABC News Person of the Week, told stories from around the world in collaboration with the United Nations, and was invited to photograph President Obama in the Oval Office. His photography and storytelling blog, also called Humans of New York is followed by over fifteen million people on several social media platforms. He is a graduate of the University of Georgia and lives in New York City.";
    c.selected=0;
    await AuthorGetxController.to.createContact(c);
    //
    Authors c1 = Authors();
    c1.name = "Rachel Campos-Duffy";
    c1.numberBook="3";
    c1.selected=0;
    c1.image = "imageAuthor/RachelCamposDuffy.png";
    c1.des="is an American television personality. She first appeared on television in 1994 as a cast member on the MTV reality television series The Real World: San Francisco, before moving on to work as a television host. She was a guest host on the ABC talk show The View, before moving onto Fox News,[2] where she has guest-hosted the show";
    await AuthorGetxController.to.createContact(c1);
    //
    Authors c2 = Authors();
    c2.name = "Mitch Albom";
    c2.numberBook="+100";
    c2.selected=0;
    c2.image = "imageAuthor/MitchAlbom.png";
    c2.des="Mitch Albom is the author of numerous books of fiction and nonfiction, which have collectively sold more than forty million copies in forty-seven languages worldwide. He has written seven number-one New York Times bestsellers – including TUESDAYS WITH MORRIE, the bestselling memoir of all time, which topped the list for four straight years – award-winning TV films, stage plays, screenplays, a nationally syndicated newspaper column, and a musical. Through his work at the Detroit Free Press, he was inducted into both the National Sports Media Association and Michigan Sports halls of fame and is the recipient of the 2010 Red Smith Award for lifetime achievement. After bestselling memoir FINDING CHIKA and “Human Touch,” the weekly serial written and published online in real-time to raise funds for pandemic relief, his latest work is a return to fiction with THE STRANGER IN THE LIFEBOAT (Harper, November 2021). He founded and oversees SAY Detroit, a consortium of nine different charitable operations in his hometown, including a nonprofit dessert shop and food product line to fund programs for Detroit’s most underserved citizens. ";
    await AuthorGetxController.to.createContact(c2);
    //
    Authors c3 = Authors();
    c3.name = "John Grisham";
    c3.numberBook="+100";
    c3.selected=0;
    c3.image = "imageAuthor/JohnGrisham.png";
    c3.des="Mitch Albom is the author of numerous books of fiction and nonfiction, which have collectively sold more than forty million copies in forty-seven languages worldwide. He has written seven number-one New York Times bestsellers – including TUESDAYS WITH MORRIE, the bestselling memoir of all time, which topped the list for four straight years – award-winning TV films, stage plays, screenplays, a nationally syndicated newspaper column, and a musical. Through his work at the Detroit Free Press, he was inducted into both the National Sports Media Association and Michigan Sports halls of fame and is the recipient of the 2010 Red Smith Award for lifetime achievement. After bestselling memoir FINDING CHIKA and “Human Touch,” the weekly serial written and published online in real-time to raise funds for pandemic relief, his latest work is a return to fiction with THE STRANGER IN THE LIFEBOAT (Harper, November 2021). He founded and oversees SAY Detroit, a consortium of nine different charitable operations in his hometown, including a nonprofit dessert shop and food product line to fund programs for Detroit’s most underserved citizens. ";
    await AuthorGetxController.to.createContact(c3);
  }
  void addDataBiClaBook() async {
    BookAll c=BookAll();
    c.name="The Count of Monte Cristo";
    c.pageNumber="1276 ";
    c.dateCreated="May 27, 2003";
    c.description="Thrown in prison for a crime he has not committed, Edmond Dantes is confined to the grim fortress of If. There he learns of a great hoard of treasure hidden on the Isle of Monte Cristo and he becomes determined not only to escape, but also to unearth the treasure and use it to plot the destruction of the three men responsible for his incarceration. Dumas’ epic tale of suffering and retribution, inspired by a real-life case of wrongful imprisonment, was a huge popular success when it was first serialized in the 1840s.Robin Buss’s lively English translation is complete and unabridged, and remains faithful to the style of Dumas’s original. This edition includes an introduction, explanatory notes and suggestions for further reading.\n For more than seventy years, Penguin has been the leading publisher of classic literature in the English-speaking world. With more than 1,700 titles, Penguin Classics represents a global bookshelf of the best works throughout history and across genres and disciplines. Readers trust the series to provide authoritative texts enhanced by introductions and notes by distinguished scholars and contemporary authors, as well as up-to-date translations by award-winning translators.";
    c.nameTopic="Classics";
    c.nameAuthor="Alexandre Dumas père";
    c.image="imagBaicBook/Classics/TheCountofMonteCristo.png";
    c.language="English";
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c1=BookAll();
    c1.name="A Game of Thrones ";
    c1.pageNumber="5216  ";
    c1.dateCreated="October 29, 2013";
    c1.description="Perfect for fans of HBO’s Game of Thrones—a boxed set featuring the first five novels!\n\nAn immersive entertainment experience unlike any other, A Song of Ice and Fire has earned George R. R. Martin—dubbed “the American Tolkien” by Time magazine—international acclaim and millions of loyal readers. Now here is the entire monumental cycle:\n\nA GAME OF THRONES\nA CLASH OF KINGS\nA STORM OF SWORDS\nA FEAST FOR CROWS\nA DANCE WITH DRAGONS\n\n“One of the best series in the history of fantasy.”—Los Angeles Times";
    c1.nameTopic="Classics";
    c1.nameAuthor="George R. R. Martin";
    c1.image="imagBaicBook/Classics/AGameofThrones.png";
    c1.language="English";
    await BookAllGetxController.to.createContact(c1);
    ////
    BookAll c2=BookAll();
    c2.name="Invisible Man";
    c2.pageNumber="581";
    c2.dateCreated="January 1, 1995";
    c2.description="Originally published in 1952 as the first novel by a then unknown author, it remained on the bestseller list for sixteen weeks, won the National Book Award for fiction, and established Ralph Ellison as one of the key writers of the century.\n\nThe book's nameless narrator describes growing up in a black community in the South, attending a Negro college from which he is expelled, moving to New York and becoming the chief spokesman of the Harlem branch of \"the Brotherhood\", before retreating amid violence and confusion to the basement lair of the Invisible Man he imagines himself to be.\n\nThe book is a passionate and witty tour de force of style, strongly influenced by T.S. Eliot's The Waste Land, James Joyce, and Dostoevsky.";
    c2.nameTopic="Classics";
    c2.nameAuthor="Ralph Ellison";
    c2.image="imagBaicBook/Classics/InvisibleMan.png";
    c2.language="English";
    await BookAllGetxController.to.createContact(c2);
    ////
    BookAll c3=BookAll();
    c3.name="The Call of the Wild";
    c3.pageNumber="106";
    c3.dateCreated="February 18, 2021";
    c3.description="There is an ecstasy that marks the summit of life, and beyond which life cannot rise. And such is the paradox of living, this ecstasy comes when one is most alive, and it comes as a complete forgetfulness that one is alive.\n\nThe domesticated life of a powerful St. Bernard-Shepherd mix named Buck is quickly turned on end when he is stolen away from his master and put to work as a sled dog in Alaska. His once life of luxury turns into a life of survival and adaptation as he learns the ways of the wilderness.\n\nSet in the Klondike region of Canada during the 1890s Klondike Gold Rush, The Call of the Wild showcases the transformation of a canine as he learns to adapt to what life has given him, fair or not.";
    c3.nameTopic="Classics";
    c3.nameAuthor="Jack London";
    c3.image="imagBaicBook/Classics/TheCalloftheWild.png";
    c3.language="English";
    await BookAllGetxController.to.createContact(c3);
    ////
    BookAll c4=BookAll();
    c4.name="The Princess Bride";
    c4.pageNumber="496 ";
    c4.dateCreated="January 1, 2013";
    c4.description="Here William Goldman’s beloved story of Buttercup, Westley, and their fellow adventurers finally receives a beautiful illustrated treatment.\n\nA tale of true love and high adventure, pirates, princesses, giants, miracles, fencing, and a frightening assortment of wild beasts—The Princess Bride is a modern storytelling classic.\n\nAs Florin and Guilder teeter on the verge of war, the reluctant Princess Buttercup is devastated by the loss of her true love, kidnapped by a mercenary and his henchman, rescued by a pirate, forced to marry Prince Humperdinck, and rescued once again by the very crew who absconded with her in the first place. In the course of this dazzling adventure, she'll meet Vizzini—the criminal philosopher who'll do anything for a bag of gold; Fezzik—the gentle giant; Inigo—the Spaniard whose steel thirsts for revenge; and Count Rugen—the evil mastermind behind it all. Foiling all their plans and jumping into their stories is Westley, Princess Buttercup’s one true love and a very good friend of a very dangerous pirate.";
    c4.nameTopic="Classics";
    c4.nameAuthor="William Goldman";
    c4.image="imagBaicBook/Classics/ThePrincessBride.png";
    c4.language="English";
    await BookAllGetxController.to.createContact(c4);
    ////
    BookAll c5=BookAll();
    c5.name="Moby Dick";
    c5.nameAuthor="Herman Melville";
    c5.nameTopic="Classics";
    c5.pageNumber="544  ";
    c5.dateCreated="December 5, 1999";
    c5.description="Moby Dick is the story of Captain Ahab's quest to avenge the whale that 'reaped' his leg. The quest is an obsession and the novel is a diabolical study of how a man becomes a fanatic. But it is also a hymn to democracy. Bent as the crew is on Ahab s appalling crusade, it is equally the image of a co-operative community at work: all hands dependent on all hands, each individual responsible for the security of each. Among the crew is Ishmael, the novel's narrator, ordinary sailor, and extraordinary reader. Digressive, allusive, vulgar, transcendent, the story Ishmael tells is above all an education: in the practice of whaling, in the art of writing.\nWith an Introduction and Notes by David Herd. Lecturer in English and American Literature at the University of Kent at Canterbury";
    c5.image="imagBaicBook/Classics/MobyDick.png";
    c5.language="English";
    await BookAllGetxController.to.createContact(c5);
    ////
  }
  void addDataBiActionBook() async {
    BookAll c=BookAll();
    c.name="Better Off Dead: A Jack Reacher Novel";
    c.pageNumber="322";
    c.dateCreated="October 26, 2021";
    c.description="Digging graves had not been part of my plans when I woke up that morning.\n\nReacher goes where he wants, when he wants. That morning he was heading west, walking under the merciless desert sun—until he comes upon a curious scene. A Jeep has crashed into the only tree for miles around. A woman is slumped over the wheel.\n\nDead? No, nothing is what it seems.\n\nThe woman is Michaela Fenton, an army veteran turned FBI agent trying to find her twin brother, who might be mixed up with some dangerous people. Most of them would rather die than betray their terrifying leader, who has burrowed his influence deep into the nearby border town, a backwater that has seen better days. The mysterious Dendoncker rules from the shadows, out of sight and under the radar, keeping his dealings in the dark.\n\nHe would know the fate of Fenton’s brother.\n\nReacher is good at finding people who don’t want to be found, so he offers to help, despite feeling that Fenton is keeping secrets of her own. But a life hangs in the balance. Maybe more than one. But to bring Dendoncker down will be the riskiest job of Reacher's life. Failure is not an option, because in this kind of game, the loser is always better off dead.";
    c.nameTopic="Action & Adventure";
    c.nameAuthor="Lee Child";
    c.image="imagBaicBook/Action/BetterOffDead.png";
    c.language="English";
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c1=BookAll();
    c1.name="Fahrenheit 451";
    c1.pageNumber="249 ";
    c1.dateCreated="January 10, 2012";
    c1.description="Nearly seventy years after its original publication, Ray Bradbury’s internationally acclaimed novel Fahrenheit 451 stands as a classic of world literature set in a bleak, dystopian future. Today its message has grown more relevant than ever before.\n\nGuy Montag is a fireman. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden. Montag never questions the destruction and ruin his actions produce, returning each day to his bland life and wife, Mildred, who spends all day with her television “family.” But when he meets an eccentric young neighbor, Clarisse, who introduces him to a past where people didn’t live in fear and to a present where one sees the world through the ideas in books instead of the mindless chatter of television, Montag begins to question everything he has ever known.";
    c1.nameTopic="Action & Adventure";
    c1.nameAuthor="Ray Bradbury";
    c1.image="imagBaicBook/Action/Fahrenheit451.png";
    c1.language="English";
    await BookAllGetxController.to.createContact(c1);
    ////
    BookAll c2=BookAll();
    c2.name="Mercy ";
    c2.pageNumber="417";
    c2.dateCreated="November 16, 2021";
    c2.description="FBI Agent Atlee Pine’s harrowing search for her long-lost sister Mercy reaches a boiling point in this breakneck thriller from #1 New York Times bestselling author David Baldacci.\n\nFor her entire life, FBI agent Atlee Pine has been searching for her twin sister, Mercy, who was abducted at the age of six and never seen again. Mercy’s disappearance left behind a damaged family that later shattered beyond repair when Atlee’s parents inexplicably abandoned her.\n\nNow, after a perilous investigation that nearly proved fatal, Atlee has finally discovered not only the reason behind her parents’ abandonment and Mercy’s kidnapping, but also the most promising breakthrough yet: proof that Mercy survived her abduction and then escaped her captors many years ago.\n\nThough Atlee is tantalizingly close to her family at last, the final leg of her long road to Mercy will be the most treacherous yet. Mercy left at least one dead body behind before fleeing her captors years before. Atlee has no idea if her sister is still alive, and if so, how she has been surviving all this time. When the truth is finally revealed, Atlee Pine will face the greatest danger yet, and it may well cost her everything.";
    c2.nameTopic="Action & Adventure";
    c2.nameAuthor="David Baldacci";
    c2.image="imagBaicBook/Action/Mercy.png";
    c2.language="English";
    await BookAllGetxController.to.createContact(c2);
    ////
    BookAll c3=BookAll();
    c3.name="Operation Joktan";
    c3.pageNumber="368";
    c3.dateCreated="November 16, 2021";
    c3.description="Nir Tavor is an Israeli secret service operative turned talented Mossad agent.\n\nNicole le Roux is a model with a hidden skill.\n\nA terrorist attack brings them together, and then work forces them apart—until they’re unexpectedly called back into each other’s lives.\n\nBut there’s no time for romance. As violent radicals threaten chaos across the Middle East, the two must work together to stop these extremists, pooling Nicole’s knack for technology and Nir’s adeptness with on-the-ground missions. Each heart-racing step of their operation gets them closer to the truth—and closer to danger.\n\nIn this thrilling first book in a new series, authors Amir Tsarfati and Steve Yohn draw on true events as well as tactical insights Amir learned from his time in the Israeli Defense Forces. For believers in God’s life-changing promises, Operation Joktan is a suspense-filled page-turner that illuminates the blessing Israel is to the world.";
    c3.nameTopic="Action & Adventure";
    c3.nameAuthor="Amir Tsarfati";
    c3.image="imagBaicBook/Action/OperationJoktan.png";
    c3.language="English";
    await BookAllGetxController.to.createContact(c3);
    ////
    BookAll c4=BookAll();
    c4.name="Never: A Novel";
    c4.pageNumber="813";
    c4.dateCreated="November 9, 2021";
    c4.description="“A compelling story, and only too realistic.” —Lawrence H. Summers, former U.S. Treasury Secretary\n\n\“Every catastrophe begins with a little problem that doesn’t get fixed.\” So says Pauline Green, president of the United States, in Follett’s nerve-racking drama of international tension.\n\nA shrinking oasis in the Sahara Desert; a stolen US Army drone; an uninhabited Japanese island; and one country’s secret stash of deadly chemical poisons: all these play roles in a relentlessly escalating crisis.\n\nStruggling to prevent the outbreak of world war are a young woman intelligence officer; a spy working undercover with jihadists; a brilliant Chinese spymaster; and Pauline herself, beleaguered by a populist rival for the next president election.\n\nNever is an extraordinary novel, full of heroines and villains, false prophets and elite warriors, jaded politicians and opportunistic revolutionaries. It brims with cautionary wisdom for our times, and delivers a visceral, heart-pounding read that transports readers to the brink of the unimaginable.";
    c4.nameTopic="Action & Adventure";
    c4.nameAuthor="Ken Follett";
    c4.image="imagBaicBook/Action/NeverANovel.png";
    c4.language="English";
    await BookAllGetxController.to.createContact(c4);
    ////
    BookAll c5=BookAll();
    c5.name="The Alchemist";
    c5.nameAuthor="Paulo Coelho";
    c5.nameTopic="Action & Adventure";
    c5.pageNumber="208 ";
    c5.dateCreated="April 15, 2014";
    c5.description="A special 25th anniversary edition of the extraordinary international bestseller, including a new Foreword by Paulo Coelho.\n\nCombining magic, mysticism, wisdom and wonder into an inspiring tale of self-discovery, The Alchemist has become a modern classic, selling millions of copies around the world and transforming the lives of countless readers across generations.\n\nPaulo Coelho's masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure. His quest will lead him to riches far different—and far more satisfying—than he ever imagined. Santiago's journey teaches us about the essential wisdom of listening to our hearts, of recognizing opportunity and learning to read the omens strewn along life's path, and, most importantly, to follow our dreams.";
    c5.image="imagBaicBook/Action/TheAlchemist.png";
    c5.language="English";
    await BookAllGetxController.to.createContact(c5);
    ////
  }
  void addDataBiDramaBook() async {
    BookAll c=BookAll();
    c.name="A Raisin in the Sun";
    c.pageNumber="151 ";
    c.dateCreated="November 29, 2004";
    c.description="This groundbreaking play starred Sidney Poitier, Claudia McNeill, Ruby Dee and Diana Sands in the Broadway production which opened in 1959. Set on Chicago's South Side, the plot revolves around the divergent dreams and conflicts within three generations of the Younger family: son Walter Lee, his wife Ruth, his sister Beneatha, his son Travis and matriarch Lena, called Mama. When her deceased husband's insurance money comes through, Mama dreams of moving to a new home and a better neighborhood in Chicago. Walter Lee, a chauffeur, has other plans, however: buying a liquor store and being his own man. Beneatha dreams of medical school.\n\nThe tensions and prejudice they face form this seminal American drama. Sacrifice, trust and love among the Younger family and their heroic struggle to retain dignity in a harsh and changing world is a searing and timeless document of hope and inspiration. Winner of the NY Drama Critic's Award as Best Play of the Year, it has been hailed as a \"pivotal play in the history of the American Black theatre.\" by Newsweek and \"a milestone in the American Theatre.\" by Ebony.";
    c.nameTopic="Drama";
    c.nameAuthor="Lorraine Hansberry";
    c.image="imagBaicBook/Drama/ARaisinintheSun.png";
    c.language="English";
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c1=BookAll();
    c1.name="Led Zeppelin";
    c1.pageNumber="688 ";
    c1.dateCreated="November 9, 2021";
    c1.description="Rock star. Whatever that term means to you, chances are it owes a debt to Led Zeppelin. No one before or since has lived the dream quite like Jimmy Page, Robert Plant, John Paul Jones, and John Bonham. In Led Zeppelin, Bob Spitz takes their full measure, separating the myth from the reality with his trademark connoisseurship and storytelling flair.\n\nFrom the opening notes of their first album, the band announced itself as something different, a collision of grand artistic ambition and brute primal force, of English folk music and African American blues. That record sold over 10 million copies, and it was just the beginning; Led Zeppelin's albums have sold over 300 million certified copies worldwide, and the dust has never settled.\n\nThe band is notoriously guarded, and previous books provided more heat than light. But Spitz's authority is undeniable and irresistible. His feel for the atmosphere, the context--the music, the business, the recording studios, the touring life, the whole ecosystem of popular music--is unparalleled. His account of the melding of Page and Jones, the virtuosic London sophisticates, with Plant and Bonham, the wild men from the Midlands, in a scene dominated by the Beatles and the Stones but changing fast, is in itself a revelation. Spitz takes the music seriously and brings the band's artistic journey to full and vivid life.\n\nThe music, however, is only part of the legend: Led Zeppelin is also the story of how the sixties became the seventies, of how playing clubs became playing stadiums, of how innocence became decadence. Led Zeppelin wasn't the first rock band to let loose on the road, but as with everything else, they took it to an entirely new level. Not all the legends are true, but in Spitz's careful accounting, what is true is astonishing and sometimes disturbing.\n\nLed Zeppelin gave no quarter, and neither has Bob Spitz. Led Zeppelin is the full and honest reckoning the band has long awaited, and richly deserves.";
    c1.nameTopic="Drama";
    c1.nameAuthor="Bob Spitz";
    c1.image="imagBaicBook/Drama/LedZeppelin.png";
    c1.language="English";
    await BookAllGetxController.to.createContact(c1);
    ////
    BookAll c2=BookAll();
    c2.name="Hamilton";
    c2.pageNumber="288";
    c2.dateCreated="April 12, 2016";
    c2.description="Lin-Manuel Miranda's groundbreaking musical Hamilton is as revolutionary as its subject, the poor kid from the Caribbean who fought the British, defended the Constitution, and helped to found the United States. Fusing hip-hop, pop, R&B, and the best traditions of theater, this once-in-a-generation show broadens the sound of Broadway, reveals the storytelling power of rap, and claims our country's origins for a diverse new generation.\n\nHamilton: The Revolution gives readers an unprecedented view of both revolutions, from the only two writers able to provide it. Miranda, along with Jeremy McCarter, a cultural critic and theater artist who was involved in the project from its earliest stages -- \"since before this was even a show,\" according to Miranda -- traces its development from an improbable performance at the White House to its landmark opening night on Broadway six years later. In addition, Miranda has written more than 200 funny, revealing footnotes for his award-winning libretto, the full text of which is published here.\n\nTheir account features photos by the renowned Frank Ockenfels and veteran Broadway photographer, Joan Marcus; exclusive looks at notebooks and emails; interviews with Questlove, Stephen Sondheim, leading political commentators, and more than 50 people involved with the production; and multiple appearances by President Obama himself. The book does more than tell the surprising story of how a Broadway musical became a national phenomenon: It demonstrates that America has always been renewed by the brash upstarts and brilliant outsiders, the men and women who don't throw away their shot.";
    c2.nameTopic="Drama";
    c2.nameAuthor="Lin-Manuel Miranda";
    c2.image="imagBaicBook/Drama/Hamilton.png";
    c2.language="English";
    await BookAllGetxController.to.createContact(c2);
    ////
    BookAll c3=BookAll();
    c3.name="The Crucible";
    c3.pageNumber="143";
    c3.dateCreated="March 25, 2003";
    c3.description="Based on historical people and real events, Arthur Miller's play uses the destructive power of socially sanctioned violence unleashed by the rumors of witchcraft as a powerful parable about McCarthyism.";
    c3.nameTopic="Drama";
    c3.nameAuthor="Amir Tsarfati";
    c3.image="imagBaicBook/Drama/TheCrucible.png";
    c3.language="English";
    await BookAllGetxController.to.createContact(c3);
    ////
    BookAll c4=BookAll();
    c4.name="Romeo and Juliet";
    c4.pageNumber="304";
    c4.dateCreated="April 15, 2003";
    c4.description="Romeo and Juliet is a tragedy written by William Shakespeare early in his career about two young Italian star-crossed lovers whose deaths ultimately reconcile their feuding families. It was among Shakespeare's most popular plays during his lifetime and, along with Hamlet, is one of his most frequently performed plays. Today, the title characters are regarded as archetypal young lovers.";
    c4.nameTopic="Drama";
    c4.nameAuthor="William Shakespeare";
    c4.image="imagBaicBook/Drama/RomeoandJuliet.png";
    c4.language="English";
    await BookAllGetxController.to.createContact(c4);
    ////
  }
  void addDataBiHumorBook() async {
    BookAll c=BookAll();
    c.name="Game On";
    c.pageNumber="299";
    c.dateCreated="November 2, 2021";
    c.description="When Stephanie Plum is woken up in the middle of the night by the sound of footsteps in her apartment, she wishes she didn’t keep her gun in the cookie jar in her kitchen. And when she finds out the intruder is fellow apprehension agent Diesel, six feet of hard muscle and bad attitude who she hasn’t seen in more than two years, she still thinks the gun might come in handy.\n\nTurns out Diesel and Stephanie are on the trail of the same fugitive: Oswald Wednesday, an international computer hacker as brilliant as he is ruthless. Stephanie may not be the most technologically savvy sleuth, but she more than makes up for that with her dogged determination, her understanding of human nature, and her willingness to do just about anything to bring a fugitive to justice. Unsure if Diesel is her partner or her competition in this case, she’ll need to watch her back every step of the way as she sets the stage to draw Wednesday out from behind his computer and into the real world.";
    c.nameTopic="Humor";
    c.nameAuthor="Janet Evanovich";
    c.image="imagBaicBook/Humor/GameOn.png";
    c.language="English";
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c1=BookAll();
    c1.name="Animal Farm";
    c1.pageNumber="140 ";
    c1.dateCreated="April 6, 2004";
    c1.description="A farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, they set out to create a paradise of progress, justice, and equality. Thus the stage is set for one of the most telling satiric fables ever penned—a razor-edged fairy tale for grown-ups that records the evolution from revolution against tyranny to a totalitarianism just as terrible.\n\nWhen Animal Farm was first published, Stalinist Russia was seen as its target. Today it is devastatingly clear that wherever and whenever freedom is attacked, under whatever banner, the cutting clarity and savage comedy of George Orwell’s masterpiece have a meaning and message sti";
    c1.nameTopic="Humor";
    c1.nameAuthor="George Orwell";
    c1.image="imagBaicBook/Humor/AnimalFarm.png";
    c1.language="English";
    await BookAllGetxController.to.createContact(c1);
    ////
    BookAll c2=BookAll();
    c2.name="The Unhoneymooners";
    c2.pageNumber="416";
    c2.dateCreated="May 14, 2019";
    c2.description="Olive Torres is used to being the unlucky twin: from inexplicable mishaps to a recent layoff, her life seems to be almost comically jinxed. By contrast, her sister Ami is an eternal champion...she even managed to finance her entire wedding by winning a slew of contests. Unfortunately for Olive, the only thing worse than constant bad luck is having to spend the wedding day with the best man (and her nemesis), Ethan Thomas.\n\nOlive braces herself for wedding hell, determined to put on a brave face, but when the entire wedding party gets food poisoning, the only people who aren’t affected are Olive and Ethan. Suddenly there’s a free honeymoon up for grabs, and Olive will be damned if Ethan gets to enjoy paradise solo.\n\nAgreeing to a temporary truce, the pair head for Maui. After all, ten days of bliss is worth having to assume the role of loving newlyweds, right? But the weird thing is...Olive doesn’t mind playing pretend. In fact, the more she pretends to be the luckiest woman alive, the more it feels like she might be.\n\nWith Christina Lauren’s “uniquely hilarious and touching voice” (Entertainment Weekly), The Unhoneymooners is a romance for anyone who has ever felt unlucky in love.";
    c2.nameTopic="Humor";
    c2.nameAuthor="Christina Lauren";
    c2.image="imagBaicBook/Humor/TheUnhoneymooners.png";
    c2.language="English";
    await BookAllGetxController.to.createContact(c2);
    ////
  }
  void addDataBiWorldLiteratureBook() async {
    BookAll c=BookAll();
    c.name="Things Fall Apart";
    c.pageNumber="209";
    c.dateCreated="September 1, 1994";
    c.description="Things Fall Apart is the first of three novels in Chinua Achebe's critically acclaimed African Trilogy. It is a classic narrative about Africa's cataclysmic encounter with Europe as it establishes a colonial presence on the continent. Told through the fictional experiences of Okonkwo, a wealthy and fearless Igbo warrior of Umuofia in the late 1800s, Things Fall Apart explores one man's futile resistance to the devaluing of his Igbo traditions by British political andreligious forces and his despair as his community capitulates to the powerful new order.\n\nWith more than 20 million copies sold and translated into fifty-seven languages, Things Fall Apart provides one of the most illuminating and permanent monuments to African experience. Achebe does not only capture life in a pre-colonial African village, he conveys the tragedy of the loss of that world while broadening our understanding of our contemporary realities.";
    c.nameTopic="World Literature";
    c.nameAuthor="Chinua Achebe";
    c.image="imagBaicBook/World/ThingsFallApart.png";
    c.language="English";
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c2=BookAll();
    c2.name="Pillow Thoughts";
    c2.pageNumber="272";
    c2.dateCreated="August 29, 2017";
    c2.description="Pillow Thoughts is a collection of poetry and prose about heartbreak, love, and raw emotions. It is divided into sections to read when you feel you need them most.";
    c2.nameTopic="World Literature";
    c2.nameAuthor="Courtney Peppernell";
    c2.image="imagBaicBook/World/PillowThoughts.png";
    c2.language="English";
    await BookAllGetxController.to.createContact(c2);
    ////
    BookAll c3=BookAll();
    c3.name="The Stranger";
    c3.pageNumber="123";
    c3.dateCreated="March 13, 1989";
    c3.description="Behind the intrigue, Camus explores what he termed \"the nakedness of man faced with the absurd\" and describes the condition of reckless alienation and spiritual exhaustion that characterized so much of twentieth-century life.\n\nFirst published in 1946; now in translation by Matthew Ward.";
    c3.nameTopic="World Literature";
    c3.nameAuthor="Albert Camus";
    c3.image="imagBaicBook/World/TheStranger.png";
    c3.language="English";
    await BookAllGetxController.to.createContact(c3);
    ////
    BookAll c4=BookAll();
    c4.name="Up the Creek!";
    c4.pageNumber="140";
    c4.dateCreated="November 11, 2015";
    c4.description="“A compelling story, and only too realistic.” —Lawrence H. Summers, former U.S. Treasury Secretary\n\n\“Every catastrophe begins with a little problem that doesn’t get fixed.\” So says Pauline Green, president of the United States, in Follett’s nerve-racking drama of international tension.\n\nA shrinking oasis in the Sahara Desert; a stolen US Army drone; an uninhabited Japanese island; and one country’s secret stash of deadly chemical poisons: all these play roles in a relentlessly escalating crisis.\n\nStruggling to prevent the outbreak of world war are a young woman intelligence officer; a spy working undercover with jihadists; a brilliant Chinese spymaster; and Pauline herself, beleaguered by a populist rival for the next president election.\n\nNever is an extraordinary novel, full of heroines and villains, false prophets and elite warriors, jaded politicians and opportunistic revolutionaries. It brims with cautionary wisdom for our times, and delivers a visceral, heart-pounding read that transports readers to the brink of the unimaginable.";
    c4.nameTopic="World Literature";
    c4.nameAuthor="Kevin Miller";
    c4.image="imagBaicBook/World/UptheCreek.png";
    c4.language="English";
    await BookAllGetxController.to.createContact(c4);
  }
  void addDataBiPoetryBook() async {
    BookAll c=BookAll();
    c.name="How the Grinch Stole Christmas!";
    c.pageNumber="64";
    c.dateCreated="October 12, 1957";
    c.description="Every Who down in Who-ville liked Christmas a lot . . . but the Grinch, who lived just north of Who-ville, did NOT!\n\nNot since \"'Twas the night before Christmas\" has the beginning of a Christmas tale been so instantly recognizable. This heartwarming story about the effects of the Christmas spirit will grow even the coldest and smallest of hearts. Like mistletoe, candy canes, and caroling, the Grinch is a mainstay of the holidays, and his story is the perfect gift for readers young and old.";
    c.nameTopic="Poetry";
    c.nameAuthor="Dr. Seuss";
    c.image="imagBaicBook/Poetry/HowtheGrinchStoleChristmas.png";
    c.language="English";
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c2=BookAll();
    c2.name="Clarity & Connection";
    c2.pageNumber="256";
    c2.dateCreated="April 27, 2021";
    c2.description="In Clarity & Connection, Yung Pueblo describes how intense emotions accumulate in our subconscious and condition us to act and react in certain ways. In his characteristically spare, poetic style, he guides readers through the excavation and release of the past that is required for growth.\n\nTo be read on its own or as a complement to Inward, Yung Pueblo’s second work is a powerful resource for those invested in the work of personal transformation, building self-awareness, and deepening their connection with others. ";
    c2.nameTopic="Poetry";
    c2.nameAuthor="Yung Pueblo";
    c2.image="imagBaicBook/Poetry/ClarityConnection.png";
    c2.language="English";
    await BookAllGetxController.to.createContact(c2);
    ////
    BookAll c3=BookAll();
    c3.name="Milk and Honey";
    c3.pageNumber="208 ";
    c3.dateCreated="October 6, 2015";
    c3.description="The book is divided into four chapters, and each chapter serves a different purpose. Deals with a different pain. Heals a different heartache. milk and honey takes readers through a journey of the most bitter moments in life and finds sweetness in them because there is sweetness everywhere if you are just willing to look.";
    c3.nameTopic="Poetry";
    c3.nameAuthor="Rupi Kaur";
    c3.image="imagBaicBook/Poetry/MilkandHoney.png";
    c3.language="English";
    await BookAllGetxController.to.createContact(c3);
    ////
    BookAll c4=BookAll();
    c4.name="You'll Come Back to Yourself";
    c4.pageNumber="139";
    c4.dateCreated="August 18, 2019";
    c4.description="“A compelling story, and only too realistic.” —Lawrence H. Summers, former U.S. Treasury Secretary\n\n\“Every catastrophe begins with a little problem that doesn’t get fixed.\” So says Pauline Green, president of the United States, in Follett’s nerve-racking drama of international tension.\n\nA shrinking oasis in the Sahara Desert; a stolen US Army drone; an uninhabited Japanese island; and one country’s secret stash of deadly chemical poisons: all these play roles in a relentlessly escalating crisis.\n\nStruggling to prevent the outbreak of world war are a young woman intelligence officer; a spy working undercover with jihadists; a brilliant Chinese spymaster; and Pauline herself, beleaguered by a populist rival for the next president election.\n\nNever is an extraordinary novel, full of heroines and villains, false prophets and elite warriors, jaded politicians and opportunistic revolutionaries. It brims with cautionary wisdom for our times, and delivers a visceral, heart-pounding read that transports readers to the brink of the unimaginable.";
    c4.nameTopic="Poetry";
    c4.nameAuthor="Michaela Angemeer";
    c4.image="imagBaicBook/Poetry/ComeBacktoYourself.png";
    c4.language="English";
    await BookAllGetxController.to.createContact(c4);
    ////
    BookAll c5=BookAll();
    c5.name="Home Body";
    c5.pageNumber="192";
    c5.dateCreated="November 17, 2020";
    c5.description="From the #1 New York Times bestselling author of milk and honey and the sun and her flowers comes her greatly anticipated third collection of poetry.\n\nrupi kaur constantly embraces growth, and in home body, she walks readers through a reflective and intimate journey visiting the past, the present, and the potential of the self. home body is a collection of raw, honest conversations with oneself - reminding readers to fill up on love, acceptance, community, family, and embrace change. illustrated by the author, themes of nature and nurture, light and dark, rest here.";
    c5.nameTopic="Poetry";
    c5.nameAuthor="Rupi Kaur";
    c5.image="imagBaicBook/Poetry/HomeBody.png";
    c5.language="English";
    await BookAllGetxController.to.createContact(c5);
  }
  ////
  void addDataBookforBrandon() async {
    BookAll c=BookAll();
    c.name="Humans";
    c.pageNumber="451";
    c.dateCreated="October 6, 2020";
    c.description="Brandon Stanton’s new book, Humans—his most moving and compelling book to date—shows us the world.\n\nBrandon Stanton created Humans of New York in 2010. What began as a photographic census of life in New York City, soon evolved into a storytelling phenomenon. A global audience of millions began following HONY daily. Over the next several years, Stanton broadened his lens to include people from across the world.\n\nTraveling to more than forty countries, he conducted interviews across continents, borders, and language barriers. Humans is the definitive catalogue of these travels. The faces and locations will vary from page to page, but the stories will feel deeply familiar. Told with candor and intimacy, Humans will resonate with readers across the globe—providing a portrait of our shared experience.";
    c.nameTopic="Classics";
    c.nameAuthor="Brandon Stanton";
    c.image="imagBaicBook/Classics/Humans.png";
    c.language="English";
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c2=BookAll();
    c2.name="Humans of New York";
    c2.pageNumber="432";
    c2.dateCreated="October 13, 2015";
    c2.description="With over 500 vibrant, full-color photos, Humans of New York: Stories is an insightful and inspiring collection of portraits of the lives of New Yorkers.\n\nHumans of New York: Stories is the culmination of five years of innovative storytelling on the streets of New York City. During this time, photographer Brandon Stanton stopped, photographed, and interviewed more than ten thousand strangers, eventually sharing their stories on his blog, Humans of New York.\n\nIn Humans of New York: Stories, the interviews accompanying the photographs go deeper, exhibiting the intimate storytelling that the blog has become famous for today. Ranging from whimsical to heartbreaking, these stories have attracted a global following of more than 30 million people across several social media platforms.";
    c2.nameTopic="Classics";
    c2.nameAuthor="Brandon Stanton";
    c2.image="imagBaicBook/Classics/HumansofNewYork.png";
    c2.language="English";
    await BookAllGetxController.to.createContact(c2);
    ////
    BookAll c3=BookAll();
    c3.name="Little Humans";
    c3.pageNumber="40";
    c3.dateCreated="October 7, 2014";
    c3.description="Street photographer and storyteller extraordinaire Brandon Stanton is the creator of the wildly popular blog \"Humans of New York.\" He is also the author of the #1 New York Times bestseller Humans of New York.\n\nTo create Little Humans, a 40-page photographic picture book for young children, he's combined an original narrative with some of his favorite children's photos from the blog, in addition to all-new exclusive portraits. The result is a hip, heartwarming ode to little humans everywhere.";
    c3.nameTopic="Classics";
    c3.nameAuthor="Brandon Stanton";
    c3.image="imagBaicBook/Classics/LittleHumans.png";
    c3.language="English";
    await BookAllGetxController.to.createContact(c3);
    ////
    BookAll c4=BookAll();
    c4.name="A Clockwork Orange";
    c4.pageNumber="240";
    c4.dateCreated="May 21, 2019";
    c4.description="“A brilliant novel.… [A] savage satire on the distortions of the single and collective minds.”―New York Times\n\nIn Anthony Burgess’s influential nightmare vision of the future, where the criminals take over after dark, the story is told by the central character, Alex, a teen who talks in a fantastically inventive slang that evocatively renders his and his friends’ intense reaction against their society. Dazzling and transgressive, A Clockwork Orange is a frightening fable about good and evil and the meaning of human freedom. This edition includes the controversial last chapter not published in the first edition, and Burgess’s introduction, “A Clockwork Orange Resucked.”\n\n6 illustrations";
    c4.nameTopic="Classics";
    c4.nameAuthor="Brandon Stanton";
    c4.image="imagBaicBook/Classics/AClockworkOrange.png";
    c4.language="English";
    await BookAllGetxController.to.createContact(c4);
    ////
  }
  void addDataBookforRachelCamposDuffy() async {
    BookAll c=BookAll();
    c.name="All American Christmas";
    c.pageNumber="272";
    c.dateCreated="November 16, 2021";
    c.description="From the wind-swept, snowy ranges of Wyoming to Florida beaches glowing with Christmas lights, All American Christmas traces holiday traditions across the United States. In this beautiful personal keepsake, Rachel Campos-Duffy and Sean Duffy present a dazzling collection of emotional stories, treasured family photographs, and homegrown Christmas recipes from some of Fox News’ most beloved personalities.\n\nDana Perino takes readers out west to the cattle ranch where she celebrated Christmas with real life “Marlboro Men”—her uncles and grandfather. Maria Bartiromo reflects on growing up in Brooklyn and the famously brilliant light displays in her neighborhood.\n\nBrit Hume looks back at the day he and a friend rushed onto the Washington Senators’ field—and how his parents later warned him that he was now on Santa Claus’ naughty list. For Lauren Green, her understanding of Christmas has evolved with her growing faith.\n\nBeautifully designed to reflect the color and spirit and sparkle of the season and featuring 16 pages of color photographs, All American Christmas is a gift of love from the Fox News family and is sure to be cherished for seasons to come.";
    c.nameTopic="Classics";
    c.nameAuthor="Rachel Campos-Duffy";
    c.image="imagBaicBook/Classics/AllAmericanChristmas.png";
    c.language="English";
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c2=BookAll();
    c2.name="Paloma Wants to be Lady Freedom";
    c2.pageNumber="40";
    c2.dateCreated="September 3, 2019";
    c2.description="Today we spend so much time talking about diversity and what makes us different that we're forgetting to tell our children stories about what unites us as Americans. We have so many beautiful and important things in common—our history, our love of freedom, and our pursuit of the American Dream.\n\nRachel Campos-Duffy is a mother of nine and contributor on the Fox News network where she gives her honest take on politics, culture, and parenting.\n\nInspired by her immigrant mother's patriotism and the excitement of her own daughter's first visit to Washington, D.C., Rachel shares a story near and dear to her heart. It's a tale that takes the reader on a little girl's adventure inside the U.S. Capitol. While lost inside the magnificent building, Paloma becomes enchanted with the statue of Lady Freedom, learns about her immigrant father's dreams, and discovers her own courage and love for America.";
    c2.nameTopic="Poetry";
    c2.nameAuthor="Rachel Campos-Duffy";
    c2.image="imagBaicBook/Poetry/PalomaWantstobeLadyFreedom.png";
    c2.language="English";
    await BookAllGetxController.to.createContact(c2);
    ////
    BookAll c3=BookAll();
    c3.name="The Christmas Pig";
    c3.pageNumber="288";
    c3.dateCreated="October 12, 2021";
    c3.description="Jack loves his childhood toy, Dur Pig. DP has always been there for him, through good and bad. Until one Christmas Eve something terrible happens -- DP is lost. But Christmas Eve is a night for miracles and lost causes, a night when all things can come to life... even toys. And Jack’s newest toy -- the Christmas Pig (DP’s replacement) -- has a daring plan: Together they’ll embark on a magical journey to seek something lost, and to save the best friend Jack has ever known...";
    c3.nameTopic="Poetry";
    c3.nameAuthor="Rachel Campos-Duffy";
    c3.image="imagBaicBook/Poetry/TheChristmas.png";
    c3.language="English";
    await BookAllGetxController.to.createContact(c3);
    ////
    BookAll c4=BookAll();
    c4.name="Stay Home, Stay Happy";
    c4.pageNumber="256";
    c4.dateCreated="August 25, 2009";
    c4.description="National television personality and mother of five Rachel Campos-Duffy presents a new way of looking at stay at-home motherhood that will transform the way readers view their days, their family, and their home.";
    c4.nameTopic="Classics";
    c4.nameAuthor="Rachel Campos-Duffy";
    c4.image="imagBaicBook/Classics/StayHome.png";
    c4.language="English";
    await BookAllGetxController.to.createContact(c4);
    ////
  }
  void addDataBookforMitchAlbom() async {
    BookAll c=BookAll();
    c.name="The Stranger in the Lifeboat";
    c.pageNumber="288";
    c.dateCreated="November 2, 2021";
    c.description="#1 New York Times Bestseller\n\nWhat would happen if we called on God for help and God actually appeared? In Mitch Albom’s profound new novel of hope and faith, a group of shipwrecked passengers pull a strange man from the sea. He claims to be \“the Lord.\” And he says he can only save them if they all believe in him.";
    c.nameTopic="Classics";
    c.nameAuthor="Mitch Albom";
    c.image="imagBaicBook/Classics/TheStranger.png";
    c.language="English";
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c2=BookAll();
    c2.name="The Time Keeper";
    c2.pageNumber="240 ";
    c2.dateCreated="October 1, 2013";
    c2.description="The man who became Father Time.\n\nIn Mitch Albom's exceptional work of fiction, the inventor of the world's first clock is punished for trying to measure God's greatest gift. He is banished to a cave for centuries and forced to listen to the voices of all who come after him seeking more days, more years.\n\nEventually, with his soul nearly broken, Father Time is granted his freedom, along with a magical hourglass and a mission: a chance to redeem himself by teaching two earthly people the true meaning of time.\n\nHe returns to our world--now dominated by the hour-counting he so innocently began--and commences a journey with two unlikely partners: one a teenage girl who is about to give up on life, the other a wealthy old businessman who wants to live forever. To save himself, he must save them both. And stop the world to do so.\n\nTold in Albom's signature spare, evocative prose, this remarkably original tale will inspire readers everywhere to reconsider their own notions of time, how they spend it, and how precious it truly is.";
    c2.nameTopic="Classics";
    c2.nameAuthor="Mitch Albom";
    c2.image="imagBaicBook/Classics/TheTimeKeeper.png";
    c2.language="English";
    await BookAllGetxController.to.createContact(c2);
    ////
    BookAll c3=BookAll();
    c3.name="For One More Day";
    c3.pageNumber="208";
    c3.dateCreated="April 1, 2008";
    c3.description="Mitch Albom mesmerized readers around the world with his number one New York Times bestsellers, The Five People You Meet in Heaven and Tuesdays with Morrie. Now he returns with a beautiful, haunting novel about the family we love and the chances we miss.\n\nFor One More Day is the story of a mother and a son, and a relationship that covers a lifetime and beyond. It explores the question: What would you do if you could spend one more day with a lost loved one?\n\nAs a child, Charley \"Chick\" Benetto was told by his father, \"You can be a mama's boy or a daddy's boy, but you can't be both.\" So he chooses his father, only to see the man disappear when Charley is on the verge of adolescence.\n\nDecades later, Charley is a broken man. His life has been crumbled by alcohol and regret. He loses his job. He leaves his family. He hits bottom after discovering his only daughter has shut him out of her wedding. And he decides to take his own life.\n\nHe makes a midnight ride to his small hometown, with plans to do himself in. But upon failing even to do that, he staggers back to his old house, only to make an astonishing discovery. His mother--who died eight years earlier--is still living there, and welcomes him home as if nothing ever happened.\n\nWhat follows is the one \"ordinary\" day so many of us yearn for, a chance to make good with a lost parent, to explain the family secrets, and to seek forgiveness. Somewhere between this life and the next, Charley learns the astonishing things he never knew about his mother and her sacrifices. And he tries, with her tender guidance, to put the crumbled pieces of his life back together.\n\nThrough Albom's inspiring characters and masterful storytelling, readers will newly appreciate those whom they love--and may have thought they'd lost--in their own lives. For One More Day is a book for anyone in a family, and will be cherished by Albom's millions of fans worldwide.";
    c3.nameTopic="Classics";
    c3.nameAuthor="Mitch Albom";
    c3.image="imagBaicBook/Classics/ForOneMoreDay.png";
    c3.language="English";
    await BookAllGetxController.to.createContact(c3);
    ////
  }
  void addDataBookforJohnGrisham() async {
    BookAll c=BookAll();
    c.name="The Brethren";
    c.pageNumber="450";
    c.dateCreated="March 9, 2010";
    c.description="They call themselves the Brethren: three disgraced former judges doing time in a Florida federal prison. One was sent up for tax evasion. Another, for skimming bingo profits. The third for a career-ending drunken joyride. Meeting daily in the prison law library, taking exercise walks in their boxer shorts, these judges-turned-felons can reminisce about old court cases, dispense a little jailhouse justice, and contemplate where their lives went wrong. Or they can use their time in prison to get very rich—very fast.\n\nAnd so they sit, sprawled in the prison library, furiously writing letters, fine-tuning a wickedly brilliant extortion scam—while events outside their prison walls begin to erupt. A bizarre presidential election is holding the nation in its grips, and a powerful government figure is pulling some very hidden strings. For the Brethren, the timing couldn’t be better. Because they’ve just found the perfect victim.";
    c.nameTopic="Action & Adventure";
    c.nameAuthor="John Grisham";
    c.image="imagBaicBook/Action/TheBrethren.png";
    c.language="English";
    await BookAllGetxController.to.createContact(c);
    ////
    BookAll c2=BookAll();
    c2.name="The Summons";
    c2.pageNumber="254";
    c2.dateCreated="February 5, 2002";
    c2.description="Ray Atlee is a professor of law at the University of Virginia. He's forty-three, newly single, and still enduring the aftershocks of a surprise divorce. He has a younger brother, Forrest, who redefines the notion of a family's black sheep.\n\nAnd he has a father, a very sick old man who lives alone in the ancestral home in Clanton, Mississippi. He is known to all as Judge Atlee, a beloved and powerful official who has towered over local law and politics for forty years. No longer on the bench, the Judge has withdrawn to the Atlee mansion and become a recluse.\n\nWith the end in sight, Judge Atlee issues a summons for both sons to return home to Clanton, to discuss the details of his estate. It is typed by the Judge himself, on his handsome old stationery, and gives the date and time for Ray and Forrest to appear in his study.\n\nRay reluctantly heads south, to his hometown, to the place where he grew up, which he prefers now to avoid. But the family meeting does not take place. The Judge dies too soon, and in doing so leaves behind a shocking secret known only to Ray.";
    c2.nameTopic="Action & Adventure";
    c2.nameAuthor="John Grisham";
    c2.image="imagBaicBook/Action/TheSummons.png";
    c2.language="English";
    await BookAllGetxController.to.createContact(c2);
    ////
    BookAll c3=BookAll();
    c3.name="Camino Winds";
    c3.pageNumber="312";
    c3.dateCreated="April 28, 2020";
    c3.description="“In American icon John Grisham’s new novel, Camino Winds, an odd assortment of mystery and crime authors, some of them felons themselves, discover one of their colleagues has been murdered during the fury of a massive hurricane—the perfect crime scene. Since officials are preoccupied with the aftermath of the storm, the authors set out to solve the mystery themselves, in the type of wild but smart caper that Grisham’s readers love.” —Delia Owens, author of Where the Crawdads Sing ";
    c3.nameTopic="Classics";
    c3.nameAuthor="John Grisham";
    c3.image="imagBaicBook/Classics/CaminoWinds.png";
    c3.language="English";
    await BookAllGetxController.to.createContact(c3);
    ////
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [HexColor("#654E09"), Colors.orange.shade700],
            ),
          ),
          child: SvgPicture.asset("image/BookLover.svg")),
    );
  }
}
