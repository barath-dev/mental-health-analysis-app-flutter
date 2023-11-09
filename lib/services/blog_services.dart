class ApiService {
  final endPointUrl =
      "https://newsapi.org/v2/everything?q=depression&from=2023-10-07&sortBy=relevancy&language=en&apiKey=9b4a2759b1a34d3f8d040853c0fd27f4";

  List<Map<String, dynamic>> getArticle() {
    Map<String, dynamic> res = {
      "status": "ok",
      "totalResults": 4521,
      "articles": [
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Charles R. Davis",
          "title":
              "On Ukraine's frontlines, soldiers show steely determination. But they also experience burnout, depression, divorce, 'and a lot of PTSD'",
          "description":
              "Ukraine's front line soldiers feel frustrated that some civilians are going about daily living while troops have been at war with Russia for 600 days.",
          "url":
              "https://www.businessinsider.com/ukraine-front-line-soldiers-determined-depressed-ptsd-2023-10",
          "urlToImage":
              "https://i.insider.com/653bf9120487ff031cb0b44d?width=1200&format=jpeg",
          "publishedAt": "2023-10-28T14:28:01Z",
          "content":
              "A Ukrainian soldie poses for a portrait, in an undisclosed location near the town of Orikhiv, in the Zaporizhzhia region, on October 1, 2023.ROMAN PILIPEY/AFP via Getty Images\r\n<ul><li>Ukraine's sold… [+4072 chars]"
        },
        {
          "source": {"id": null, "name": "Northwestern.edu"},
          "author": null,
          "title":
              "One sleepless night can rapidly reverse depression for several days",
          "description":
              "Acute sleep loss increases dopamine release and rewires the brain, new study finds",
          "url":
              "https://news.northwestern.edu/stories/2023/11/one-sleepless-night-can-rapidly-reverse-depression-for-several-days/",
          "urlToImage":
              "https://news.northwestern.edu/assets/Stories/2023/11/kozorovitskiy970__FocusFillWzEyMDAsNjMwLCJ5Iiw4N10.jpg",
          "publishedAt": "2023-11-02T20:43:18Z",
          "content":
              "To explore these mechanisms, Kozorovitskiy and her team developed a new experiment to induce acute sleep loss in mice that did not have genetic predispositions related to human mood disorders. The ex… [+3851 chars]"
        },
        {
          "source": {"id": null, "name": "CNET"},
          "author": "McKenzie Dillon",
          "title":
              "4 Ways to Prepare for the End of Daylight Saving Time - CNET",
          "description":
              "Get ready to fall back this Sunday. Even though we're gaining an hour, it can take a toll on our sleep quality. Here's how to adjust for a smooth transition.",
          "url":
              "https://www.cnet.com/health/sleep/4-ways-to-prepare-for-the-end-of-daylight-saving-time/",
          "urlToImage":
              "https://www.cnet.com/a/img/resize/4d89730c7d5b3a37dd62a75d77c6543184ec162a/hub/2022/11/11/2c6c42f0-1596-466e-8c17-36406ca43c52/gettyimages-637885628.jpg?auto=webp&fit=crop&height=675&width=1200",
          "publishedAt": "2023-11-03T15:00:04Z",
          "content":
              "Get ready to turn back your clocks -- daylight saving time is ending this Sunday, Nov. 5. While we get an hour extra of sleep, the shorter days and early sunsets can leave people feeling out of whack… [+5194 chars]"
        },
        {
          "source": {"id": "bbc-news", "name": "BBC News"},
          "author": "https://www.facebook.com/bbcnews",
          "title": "Kota: Stricter rules for India student hub after suicides",
          "description":
              "Young people from across India go to the city of Kota for tuition to help them pass entrance exams to elite colleges.",
          "url": "https://www.bbc.co.uk/news/world-asia-india-67167036",
          "urlToImage":
              "https://ichef.bbci.co.uk/news/1024/branded_news/B5AD/production/_131290564_97e8e352-da61-4569-b896-a756b79b27b7.jpg",
          "publishedAt": "2023-10-23T00:59:12Z",
          "content":
              "Coaching centres in the northern Indian city of Kota are facing tighter regulations after a rise in the number of student suicides. BBC Hindi's Vineet Khare has been talking to pupils who have travel… [+7867 chars]"
        },
        {
          "source": {"id": null, "name": "Stanford.edu"},
          "author": null,
          "title": "Ketamine's effect on depression may hinge on hope",
          "description":
              "In an unusual trial, Stanford Medicine researchers found that a patient’s belief that they had received ketamine, even if they didn’t, could improve their depression.",
          "url": "https://med.stanford.edu/news/all-news/2023/10/ketamine.html",
          "urlToImage":
              "http://med.stanford.edu/content/dam/sm-news/images/2023/10/ketamine.jpg",
          "publishedAt": "2023-10-19T21:25:55Z",
          "content":
              "In study after study, the psychoactive drug ketamine has given profound and fast relief to many people suffering from severe depression. But these studies have a critical shortcoming: Participants us… [+1556 chars]"
        },
        {
          "source": {"id": null, "name": "Boing Boing"},
          "author": "Rob Beschizza",
          "title":
              "Alaska Airlines passengers sue it after off-duty pilot tried to kill them all",
          "description":
              "Many questions remain after an off-duty Alaska Airlines pilot, a passenger in the jump set up front, tried to turn off the engines and kill everyone aboard. Three of the passengers are filing a lawsuit to demand a \"forthright public explanation\". — Read the r…",
          "url":
              "https://boingboing.net/2023/11/04/alaska-airlines-passengers-sue-it-after-off-duty-pilot-tried-to-kill-them-all.html",
          "urlToImage":
              "https://i0.wp.com/boingboing.net/wp-content/uploads/2023/10/shutterstock_2314610253-scaled.jpg?fit=1200%2C692&ssl=1",
          "publishedAt": "2023-11-04T13:53:40Z",
          "content":
              "A court document from October said that Emerson admitted he hadn't slept for 40 hours, he'd been suffering from depression, and had taken magic mushrooms two days before the flight.\r\nThe three plaint… [+492 chars]"
        },
        {
          "source": {"id": null, "name": "NPR"},
          "author": "Rhitu Chatterjee",
          "title":
              "The Middle East crisis is stirring up a 'tsunami' of mental health woes",
          "description":
              "The Israel-Gaza conflict is likely to leave people in the region struggling with trauma-related mental health symptoms for a long time to come.",
          "url":
              "https://www.npr.org/sections/goatsandsoda/2023/10/25/1208192912/the-middle-east-crisis-is-stirring-up-a-tsunami-of-mental-health-woes",
          "urlToImage":
              "https://media.npr.org/assets/img/2023/10/24/trauma-diptych_wide-ed96e31461211ce9a1adc9b82300407b64c6d2f1-s1400-c100.jpg",
          "publishedAt": "2023-10-25T20:49:27Z",
          "content":
              "Left: A Palestinian woman cries at the garden of Al-Ahli Arabi Baptist Hospital after it was hit in Gaza City, Gaza on Oct. 18. Right: After an attack by Hamas on a kibbutz near the Gaza border, a sw… [+8667 chars]"
        },
        {
          "source": {"id": null, "name": "Boing Boing"},
          "author": "Carla Sinclair",
          "title":
              "Stable genius Donald Trump gives us a crash course on U.S. history in hilarious video",
          "description":
              "Never has U.S. history been as entertaining as when taught by stable genius Professor Donald Trump. In this 3-minute crash course, you will learn: \n\n\n\n• How the Continental Army \"manned the airports\" during the Revolutionary War• Andrew Jackson caused the Civ…",
          "url":
              "https://boingboing.net/2023/10/24/stable-genius-donald-trump-gives-us-a-crash-course-on-u-s-history-in-hilarious-video.html",
          "urlToImage":
              "https://i0.wp.com/boingboing.net/wp-content/uploads/2023/10/trump.jpeg?fit=1200%2C675&ssl=1",
          "publishedAt": "2023-10-24T10:26:33Z",
          "content":
              "Never has U.S. history been as entertaining as when taught by stable genius Professor Donald Trump. In this 3-minute crash course, you will learn: \r\n How the Continental Army \"manned the airports\" du… [+732 chars]"
        },
        {
          "source": {"id": null, "name": "Marginalrevolution.com"},
          "author": "Alex Tabarrok",
          "title": "The Great Depression is Over!",
          "description":
              "Throughout the 20th century, the Great Depression dominated macroeconomic discourse, engaging prominent economists such as Keynes, Hayek, Friedman, Lucas, and Prescott. Most principles of macroeconomics textbooks spend considerable time analyzing the Great De…",
          "url":
              "https://marginalrevolution.com/marginalrevolution/2023/10/the-great-depression-is-over.html",
          "urlToImage":
              "https://marginalrevolution.com/wp-content/uploads/2023/09/Approved-Comp_Cowen_Modern-Principles-of-Economics-6e.050423-234x300.jpg",
          "publishedAt": "2023-10-18T11:21:05Z",
          "content":
              "Throughout the 20th century, the Great Depression dominated macroeconomic discourse, engaging prominent economists such as Keynes, Hayek, Friedman, Lucas, and Prescott. Most principles of macroeconom… [+1329 chars]"
        },
        {
          "source": {"id": null, "name": "Gizmodo.com"},
          "author": "Passant Rabie",
          "title":
              "Curing the Space Blues: Vive VR Headset for Astronauts' Mental Health Heads to ISS",
          "description":
              "Nearing the end of an unintended year in space, NASA astronaut Frank Rubio reflected on Earthly pleasures that he was eager to indulge in as soon as he returned home. “I think just going out in the yard and enjoying the trees and the silence,” Rubio said duri…",
          "url":
              "https://gizmodo.com/htc-vive-vr-headset-anchor-update-space-station-iss-1850980457",
          "urlToImage":
              "https://i.kinja-img.com/image/upload/c_fill,h_675,pg_1,q_80,w_1200/2072c25c50fbe6a476b140c0fb7f411f.jpg",
          "publishedAt": "2023-11-02T13:20:00Z",
          "content":
              "Nearing the end of an unintended year in space, NASA astronaut Frank Rubio reflected on Earthly pleasures that he was eager to indulge in as soon as he returned home. I think just going out in the ya… [+4273 chars]"
        },
        {
          "source": {"id": null, "name": "HuffPost"},
          "author": "Kelby Vera",
          "title":
              "John Fetterman Stopped Fearing Death After Debilitating Stroke",
          "description":
              "“People in their middle age talk about their mortality,” the senator told Men’s Health. “I’ve experienced my mortality, so I’m not afraid of it anymore.”",
          "url":
              "https://www.huffpost.com/entry/john-fetterman_n_6541201be4b032ae1c9cdf06",
          "urlToImage":
              "https://img.huffingtonpost.com/asset/6541443a220000360018d679.jpeg?cache=opBkeXhA8E&ops=1200_630",
          "publishedAt": "2023-10-31T18:58:54Z",
          "content":
              "Sen. John Fetterman (D) said his near-fatal stroke completely changed how he looks at death.\r\nPeople in their middle age talk about their mortality, Pennsylvanias junior senator told Mens Health in a… [+2062 chars]"
        },
        {
          "source": {"id": null, "name": "9to5Mac"},
          "author": "Chance Miller",
          "title":
              "Apple wants to use Vision Pro cameras and eye-tracking to detect mental health issues, report says",
          "description":
              "A new report from The Information today says that Apple is researching ways to use Vision Pro to diagnose and treat mental health issues. According to the story, Apple wants to use Vision Pro’s array of cameras and sensors to detect when a user might have “de…",
          "url":
              "https://9to5mac.com/2023/10/25/apple-vision-pro-mental-health-features/",
          "urlToImage":
              "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2023/06/Everything-announced-at-WWDC-2023.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
          "publishedAt": "2023-10-25T13:31:57Z",
          "content":
              "A new report from The Information today says that Apple is researching ways to use Vision Pro to diagnose and treat mental health issues. According to the story, Apple wants to use Vision Pro’s array… [+2158 chars]"
        },
        {
          "source": {"id": null, "name": "NPR"},
          "author": "Suzanne Nuyen",
          "title":
              "Up First briefing: Gaza has few good Hamas replacements; Las Vegas hospitality strike",
          "description":
              "It's been nearly one month since Hamas attacked Israel. As the war goes on, Gaza has few good options for replacing the militant group. Las Vegas hospitality workers could walk off the job this week.",
          "url":
              "https://www.npr.org/2023/11/06/1210838851/up-first-briefing-hamas-replacement-options-gaza-las-vegas-hospitality-strike",
          "urlToImage":
              "https://media.npr.org/assets/img/2023/11/06/ap23310345145299_wide-e20e6fced38fe50c2a25571c88c837420c349e5b-s1400-c100.jpg",
          "publishedAt": "2023-11-06T12:40:19Z",
          "content":
              "Good morning. You're reading the Up First newsletter. Subscribe here to get it delivered to your inbox, and listen to the Up First podcast for all the news you need to start your day.\r\nToday's top st… [+5071 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "John L. Dorman",
          "title":
              "Elizabeth Warren says John Fetterman 'brings his own vibe' to the Senate: 'It's a good thing to shake this stuffy place up'",
          "description":
              "\"There's no one like him,\" Warren said of Fetterman as he nears one year in office representing Pennsylvania in the Senate.",
          "url":
              "https://www.businessinsider.com/warren-fetterman-populist-senate-dress-code-traditions-menendez-2023-11",
          "urlToImage":
              "https://i.insider.com/654696733cc84b4dfafc9ff0?width=1200&format=jpeg",
          "publishedAt": "2023-11-04T19:34:07Z",
          "content":
              "Sen. John Fetterman of Pennsylvania at the US Capitol.Matt McClain/The Washington Post via Getty Images\r\n<ul><li>Elizabeth Warren told The Washington Post, \"There's no one like\" John Fetterman in the… [+2438 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Haley Tenore",
          "title":
              "Serial snorers may want to check out the next Apple Watch — it will reportedly help detect sleep apnea",
          "description":
              "The next Apple Watch will reportedly track your breathing patterns to help detect sleep apnea, and may be able to track your blood pressure too.",
          "url":
              "https://www.businessinsider.com/next-apple-watch-ios-health-sleep-apnea-detection-snoring-report-2023-11",
          "urlToImage":
              "https://i.insider.com/65428732b788914e554dab10?width=1200&format=jpeg",
          "publishedAt": "2023-11-02T14:41:47Z",
          "content":
              "The next Apple Watch could track your nighttime breathing patterns and help detect sleep apnea.Photo by Daniel Karmann/picture alliance via Getty Images\r\n<ul>\n<li>The next Apple Watch could help dete… [+2430 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Pete Syme",
          "title":
              "A major aviation union issued a warning to its members about taking magic mushrooms — a week after an off-duty Alaska Airlines pilot who used the drug was charged with attempted murder",
          "description":
              "The Association of Flight Attendants informed its members about the dangers of microdosing magic mushrooms, days after an Alaska Airlines incident.",
          "url":
              "https://www.businessinsider.com/after-alaska-airlines-incident-union-warns-about-magic-mushrooms-2023-11",
          "urlToImage":
              "https://i.insider.com/6543921f36d588dc55c90014?width=1200&format=jpeg",
          "publishedAt": "2023-11-02T12:45:44Z",
          "content":
              "An Alaska Airlines flight takes off.AP Photo/Ted S. Warren, File\r\n<ul><li>The Association of Flight Attendants warned its members about microdosing magic mushrooms.</li><li>It came days after Joseph … [+2445 chars]"
        },
        {
          "source": {"id": "new-scientist", "name": "New Scientist"},
          "author": "Grace Wade",
          "title":
              "We may now know how ketamine can treat depression for so long",
          "description":
              "Ketamine becomes trapped inside certain receptors in the brains of mice – and the longer it is trapped, the longer its anti-depressant effects last",
          "url":
              "https://www.newscientist.com/article/2399959-we-may-now-know-how-ketamine-can-treat-depression-for-so-long/",
          "urlToImage":
              "https://images.newscientist.com/wp-content/uploads/2023/10/26204546/SEI_177548781.jpg",
          "publishedAt": "2023-10-27T17:31:59Z",
          "content":
              "People with depression might be prescribed ketamine, and we’re closer to understanding how it can help\r\nChanintorn.v/Shutterstock\r\nA single dose of ketamine can treat depression in people for days to… [+375 chars]"
        },
        {
          "source": {"id": null, "name": "NPR"},
          "author": "Rachel Martin",
          "title":
              "This psychedelics researcher approached his death with calm and curiosity",
          "description":
              "Roland Griffiths spent the later stage of his career exploring the ways that psychedelic drugs, specifically psilocybin, could help patients with depression, addiction issues and even terminal cancer.",
          "url":
              "https://www.npr.org/2023/11/05/1210327976/psychedelic-drugs-psilocybin-roland-griffiths-depression-cancer-meditation",
          "urlToImage":
              "https://media.npr.org/assets/img/2023/11/02/gettyimages-461026286-edit_wide-82df8ed244c2dfdd1e48f8b8bdfdc838b81ce947-s1400-c100.jpg",
          "publishedAt": "2023-11-05T11:00:24Z",
          "content":
              "Roland Griffiths' research showed how psychedelics can alleviate depression in people with terminal diseases.\r\nAndre Chung/The Washington Post via Getty Images\r\nI've got a little pile of rocks on my … [+7912 chars]"
        },
        {
          "source": {"id": "bbc-news", "name": "BBC News"},
          "author": "https://www.facebook.com/bbcnews",
          "title": "In Gaza, wounded children with no surviving family",
          "description":
              "A doctor working in Gaza told the BBC 40% of those wounded are children and many have become orphans.",
          "url": "https://www.bbc.co.uk/news/world-middle-east-67121414",
          "urlToImage":
              "https://ichef.bbci.co.uk/news/1024/branded_news/5824/production/_131446522_a05279fb2ccfd91512d9bcb97175ebffd1f9de4b0_0_5500_36671000x667.jpg",
          "publishedAt": "2023-10-17T11:58:00Z",
          "content":
              "\"There is no lonelier place in this universe than around the bed of a wounded child who has no more family to look after them,\" British doctor Ghassan Abu Sittah, who is working in Gaza City, posted … [+4589 chars]"
        },
        {
          "source": {"id": null, "name": "Science Daily"},
          "author": null,
          "title":
              "Study finds men's antidepressant use did not negatively impact IVF success",
          "description":
              "In vitro fertilization (IVF) is a time-intensive and often stress-inducing fertility procedure. Yet how does that stress impact its success? Investigators have now assessed the effects of anxiety and depression in men on fertility and IVF outcomes.",
          "url":
              "https://www.sciencedaily.com/releases/2023/10/231019111326.htm",
          "urlToImage": "https://www.sciencedaily.com/images/scidaily-icon.png",
          "publishedAt": "2023-10-19T15:13:26Z",
          "content":
              "In vitro fertilization (IVF) is a time-intensive and often stress-inducing fertility procedure. Yet how does that stress impact its success? Investigators at Brigham and Women's Hospital, a founding … [+3671 chars]"
        },
        {
          "source": {"id": null, "name": "ReadWrite"},
          "author": "Deanna Ritchie",
          "title": "Protecting children’s mental health online",
          "description":
              "Over the past ten years, authorities have expressed growing concern about the negative effects of social media on the mental […]\nThe post Protecting children’s mental health online appeared first on ReadWrite.",
          "url":
              "https://readwrite.com/protecting-childrens-mental-health-online/",
          "urlToImage":
              "https://readwrite.com/wp-content/uploads/2023/11/Childrens-Mental-Health-Online.jpg",
          "publishedAt": "2023-11-02T19:00:45Z",
          "content":
              "Over the past ten years, authorities have expressed growing concern about the negative effects of social media on the mental well-being of children and adolescents. Research indicates a link between … [+2862 chars]"
        },
        {
          "source": {"id": null, "name": "Boing Boing"},
          "author": "Rob Beschizza",
          "title":
              "California governor Gavin Newsom vetoes decriminalization of psychedelics and ban on caste discrimination",
          "description":
              "Possessing psychedelic drugs such as magic mushrooms will remain a serious criminal offense in California after governor Gavin Newsom vetoed a bill decriminalizing their possession. Newsom issued a vague statement saying more \"needs to be done\" regarding medi…",
          "url":
              "https://boingboing.net/2023/10/08/california-governor-gavin-newsom-vetoes-decriminalization-of-psychedelics-and-ban-on-caste-discrimination.html",
          "urlToImage":
              "https://i0.wp.com/boingboing.net/wp-content/uploads/2023/10/shutterstock_2189112945-scaled.jpg?fit=1200%2C960&ssl=1",
          "publishedAt": "2023-10-08T15:02:09Z",
          "content":
              "Possessing psychedelic drugs such as magic mushrooms will remain a serious criminal offense in California after governor Gavin Newsom vetoed a bill decriminalizing their possession. Newsom issued a v… [+1329 chars]"
        },
        {
          "source": {"id": null, "name": "Futurity: Research News"},
          "author": "Leigh Beeson-U. Georgia",
          "title":
              "Minority students on campus report higher rates of depression",
          "description":
              "Students who were not the majority race at a predominantly white college reported significantly higher rates of depression than their white peers, a study finds.",
          "url":
              "https://www.futurity.org/depression-college-students-race-2987432-2/",
          "urlToImage":
              "https://www.futurity.org/wp/wp-content/uploads/2023/10/minority_college_students_depression_1600.jpg",
          "publishedAt": "2023-10-17T16:33:31Z",
          "content":
              "Students who were not the majority race at a predominantly white college reported significantly higher rates of depression than their white peers, a study finds.\r\nAt the mostly white university, more… [+3381 chars]"
        },
        {
          "source": {"id": null, "name": "MacRumors"},
          "author": "Hartley Charlton",
          "title":
              "Report: Apple Continues to Explore Health Capabilities of Vision Pro",
          "description":
              "Apple has explored using its Vision Pro headset to diagnose and treat mental health problems, among other health monitoring capabilities, The Information's Wayne Ma reports.\n\n\n\n\n\nCiting sources with direct knowledge of the matter, Ma explains that Apple has e…",
          "url":
              "https://www.macrumors.com/2023/10/25/apple-explores-vision-pro-health-capabilities/",
          "urlToImage":
              "https://images.macrumors.com/t/YKtAsJO8NDYr3D05sfn-vc73xx4=/1920x/article-new/2023/09/Vision-Pro-Person.jpg",
          "publishedAt": "2023-10-25T13:44:47Z",
          "content":
              "Apple has explored using its Vision Pro headset to diagnose and treat mental health problems, among other health monitoring capabilities, The Information's Wayne Ma reports.\r\nCiting sources with dire… [+2677 chars]"
        },
        {
          "source": {"id": null, "name": "Lifehacker.com"},
          "author": "Beth Skwarecki",
          "title":
              "TikTok Myth of the Week: All Your Problems Are Due to High Cortisol",
          "description":
              "Do sweet and salty foods taste good to you? Is your sleep maybe not the best? Do you have some belly fat? The answer to these questions is probably yes, because you are human, but that’s not important right now! TikTok influencers would like you to consider a…",
          "url":
              "https://lifehacker.com/tiktok-myth-of-the-week-all-your-problems-are-due-to-h-1850963889",
          "urlToImage":
              "https://i.kinja-img.com/image/upload/c_fill,h_675,pg_1,q_80,w_1200/428385035f7431b0fa3a692fb42aaf82.jpg",
          "publishedAt": "2023-10-27T14:30:00Z",
          "content":
              "Do sweet and salty foods taste good to you? Is your sleep maybe not the best? Do you have some belly fat? The answer to these questions is probably yes, because you are human, but thats not important… [+14817 chars]"
        },
        {
          "source": {"id": null, "name": "Mental Floss"},
          "author": "Ellen Gutoskey",
          "title": "The Stories Behind 8 Famous Photos",
          "description":
              "From Elvis Presley wearing a velvet suit to meet Richard Nixon to the migrant mother who unwittingly became the face of the Great Depression, these are the true stories behind a few iconic photographs from history.",
          "url":
              "https://www.mentalfloss.com/posts/stories-behind-famous-photos",
          "urlToImage":
              "https://images2.minutemediacdn.com/image/upload/c_crop,w_2119,h_1191,x_0,y_221/c_fill,w_1440,ar_16:9,f_auto,q_auto,g_auto/images/voltaxMediaLibrary/mmsport/mentalfloss/01hcx0magw0apetgfagf.jpg",
          "publishedAt": "2023-10-17T16:00:00Z",
          "content":
              "A pictures worth a thousand wordsbut sometimes, you also want the words. Discover the who, when, where, why, and how behind some of historys most iconic photosfrom Elvis Presley wearing a velvet suit… [+15658 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Theron Mohamed",
          "title":
              "'Rich Dad Poor Dad' author echoes Warren Buffett's signature warning against trying to time the market",
          "description":
              "Robert Kiyosaki took a leaf out of Warren Buffett's book, telling casual investors to buy and hold for the long term and use dollar-cost averaging.",
          "url":
              "https://markets.businessinsider.com/news/stocks/rich-poor-dad-kiyosaki-buffett-dollar-cost-averaging-market-timing-2023-10",
          "urlToImage":
              "https://i.insider.com/5e2b32d662fa813e064000cb?width=1200&format=jpeg",
          "publishedAt": "2023-10-23T11:08:59Z",
          "content":
              "Robert Kiyosaki.Matt Carasella/Patrick McMullan/Getty Images\r\n<ul>\n<li>Warren Buffett advises against trying to time the market, and recommends holding for the long term.</li>\n<li>Robert Kiyosaki jus… [+2797 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Insider Inc.",
          "title":
              "3 passengers sued Alaska Airlines for emotional distress over off-duty pilot accused of trying to turn off the engines mid-flight",
          "description":
              "Three passengers on a flight where an off-duty pilot is accused of trying to turn off the engines sued Alaska Airlines, claiming emotional distress.",
          "url":
              "https://www.businessinsider.com/passengers-sue-alaska-airlines-emotional-distress-pilot-turn-engines-off-2023-11",
          "urlToImage":
              "https://i.insider.com/64401644632fda001803a7f0?width=1200&format=jpeg",
          "publishedAt": "2023-11-03T10:32:10Z",
          "content":
              "Alaska Airlines said it was reviewing the complaint.Getty Images\r\n<ul>\n<li>Three passengers on the flight where an off-duty pilot is accused of trying to turn off the engines sued Alaska Airlines.</l… [+3103 chars]"
        },
        {
          "source": {"id": "abc-news", "name": "ABC News"},
          "author": "BEN FINLEY Associated Press",
          "title":
              "Her 6-year-old son shot his teacher. Now she is being sentenced for child neglect",
          "description":
              "The mother of a 6-year-old who shot his teacher in Virginia is scheduled to be sentenced for felony child neglect",
          "url":
              "https://abcnews.go.com/US/wireStory/6-year-son-shot-teacher-now-sentenced-child-104417477",
          "urlToImage":
              "https://i.abcnewsfe.com/a/038a57df-b72c-48fc-8626-7f6c1fbfce5c/wirestory_2313674ec980908c33e60d59f1cec075_16x9.jpg?w=992",
          "publishedAt": "2023-10-27T07:05:40Z",
          "content":
              "NEWPORT NEWS, Va. -- The mother of a 6-year-old who shot his teacher in Virginia is expected to be sentenced Friday for felony child neglect, 10 months after her son used her handgun to critically wo… [+3014 chars]"
        },
        {
          "source": {"id": null, "name": "Lifehacker.com"},
          "author": "Claire Lower",
          "title":
              "Everything You Wanted to Know About Salt but Were Too Afraid to Ask",
          "description":
              "I’m not being hyperbolic when I say salt is the most important seasoning of all time. It makes things taste salty, sure, but it also makes things taste like better versions the themselves, and more importantly, salt is a powerful preservative and natural anti…",
          "url":
              "https://lifehacker.com/everything-you-wanted-to-know-about-salt-but-were-too-a-1850851318",
          "urlToImage":
              "https://i.kinja-img.com/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/bf85fd3ef8fff3559ebddddc128a3020.png",
          "publishedAt": "2023-10-13T17:30:00Z",
          "content":
              "Im not being hyperbolic when I say salt is the most important seasoning of all time. It makes things taste salty, sure, but it also makes things taste like better versions the themselves, and more im… [+11029 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Anil Varma",
          "title":
              "Jeremy Grantham and Bill Gross have warned stocks are overvalued. Wharton professor Jeremy Siegel disagrees: \"They are underpriced\"",
          "description":
              "Experts such as billionaire investors Jeremy Grantham and Bill Gross have recently suggested US stocks are overvalued. Wharton professor Jeremy Siegel rejects the notion, saying they are in fact \"underpriced\".",
          "url":
              "https://markets.businessinsider.com/news/stocks/stock-market-outlook-jeremy-grantham-bill-gross-overvalued-underpriced-siegel-2023-10",
          "urlToImage":
              "https://i.insider.com/6220ead604579d001893d24d?width=1200&format=jpeg",
          "publishedAt": "2023-10-13T10:31:06Z",
          "content":
              "Wharton professor Jeremy Siegel is a long-time market commentator.REUTERS/Steve Marcus\r\n<ul>\n<li>Wharton professor Jeremy Siegel rejects the notion that US stocks are overvalued, saying they are in f… [+2825 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Anil Varma",
          "title":
              "The last time US stocks were this pricey relative to the debt market, the S&P 500 crashed 50%",
          "description":
              "US stocks are near their most expensive levels in over two decades, relative to the debt market. The last time stocks were this pricey was during the dot-com boom - and that was followed by a 50% crash in the S&P 500.",
          "url":
              "https://markets.businessinsider.com/news/stocks/stock-market-crash-outlook-vs-bonds-sp500-declined-50-percent-2023-10",
          "urlToImage":
              "https://i.insider.com/6526892d6561dd877e775681?width=1200&format=jpeg",
          "publishedAt": "2023-10-11T13:17:18Z",
          "content":
              "Traders work on the floor of the New York Stock Exchange during morning trading on May 17, 2023 in New York City.Michael M. Santiago/Getty Images\r\n<ul>\n<li>US stocks are near their most expensive lev… [+3088 chars]"
        },
        {
          "source": {"id": "ars-technica", "name": "Ars Technica"},
          "author": "Ashley Belanger",
          "title":
              "41 states sue Meta for allegedly addicting kids to Facebook and Instagram",
          "description":
              "Meta repeatedly chose not to design platforms safe for kids, states allege.",
          "url":
              "https://arstechnica.com/tech-policy/2023/10/41-states-sue-meta-for-allegedly-addicting-kids-to-facebook-and-instagram/",
          "urlToImage":
              "https://cdn.arstechnica.net/wp-content/uploads/2023/10/GettyImages-1268299173-760x380.jpg",
          "publishedAt": "2023-10-24T20:12:54Z",
          "content":
              "16 with \r\nState attorneys general in 41 states and the District of Columbia sued Meta today. The move comes after the conclusion of a multistate probe launched in 2021, where a bipartisan coalition o… [+4399 chars]"
        },
        {
          "source": {"id": null, "name": "Openculture.com"},
          "author": "Ayun Halliday",
          "title":
              "How to Be Happier in 5 Research-Proven Steps, According to Popular Yale Professor Laurie Santos",
          "description":
              "Nature doesn’t care if you’re happy, but Yale psychology professor Laurie Santos does. As Dr. Santos points out during the above appearance on The Well, the goals of natural selection have been achieved as long as humans survive and reproduce, but most of us …",
          "url":
              "https://www.openculture.com/2023/10/how-to-be-happier-in-5-research-proven-steps-according-to-popular-yale-professor-laurie-santos.html",
          "urlToImage":
              "https://cdn8.openculture.com/2023/10/12230631/Screenshot-2023-10-12-at-11.06.12%E2%80%AFPM-1024x587.png",
          "publishedAt": "2023-10-13T08:00:41Z",
          "content":
              "Nature doesnt care if youre happy, but Yale psychology professor Laurie Santos does.\r\nAs Dr. Santos points out during the above appearance on The Well, the goals of natural selection have been achiev… [+3764 chars]"
        },
        {
          "source": {"id": null, "name": "Spring.org.uk"},
          "author": "Jeremy Dean",
          "title":
              "An Unusual Sign Of Depression Most People Think Is Unrelated",
          "description":
              "Most people think this common symptom is unrelated to depression.",
          "url": "https://www.spring.org.uk/?p=98502",
          "urlToImage": "https://www.spring.org.uk/images/sad1.jpg",
          "publishedAt": "2023-11-06T17:00:55Z",
          "content":
              "Most people think this common symptom is unrelated to depression.\r\nMorning headaches are a common sign of depression and anxiety, research finds.\r\nPeople naturally assume that morning headaches are r… [+1584 chars]"
        },
        {
          "source": {"id": "time", "name": "Time"},
          "author": "Cleo Wade",
          "title": "Reaching for Ease After Having My Baby",
          "description":
              "'Postpartum healing looks different for everyone but I can tell you mine began by giving myself patience and kindness,' writes Cleo Wade.",
          "url":
              "https://time.com/6324271/motherhood-ease-postpartum-cleo-wade-essay/",
          "urlToImage":
              "https://api.time.com/wp-content/uploads/2023/10/more-contrast-Elenia-Beretta-time-RGB.jpg?quality=85",
          "publishedAt": "2023-10-17T11:00:00Z",
          "content":
              "Everyone I talk to seems to be exhausted. Exhausted by their marriage, their divorce, their last date, their day job, their dream job, their politics, their grief, their family, their friends, their … [+5062 chars]"
        },
        {
          "source": {"id": null, "name": "HuffPost"},
          "author": "Nina Golgowski",
          "title":
              "‘He Had Tried To Kill Everybody’: Passengers Sue Airlines After Pilot’s Midflight Scare",
          "description":
              "An off-duty pilot’s alleged attempt to turn off a plane’s engines last month shows that more safety protocols are needed, a class-action lawsuit states.",
          "url":
              "https://www.huffpost.com/entry/alaska-airlines-lawsuit-pilot-joseph-emerson_n_6544fc80e4b0e3ecaf8911e2",
          "urlToImage":
              "https://img.huffingtonpost.com/asset/653827081f00005e091bb172.jpeg?cache=PWLocKsN5X&ops=1200_630",
          "publishedAt": "2023-11-03T18:21:02Z",
          "content":
              "A class-action lawsuit has been brought by passengers aboard the Alaska Airlines flight that saw an off-duty pilot allegedly try to shut down the engines after consuming psychedelic mushrooms.\r\nThe O… [+2544 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Aria Yang",
          "title":
              "I quit Amazon after 2 months. The job was as stressful as I'd read about.",
          "description":
              "Quitting Amazon was worth the pay cut for peace of mind for an ex-software engineer who said the job gave him anxiety from aggressive deadlines.",
          "url":
              "https://www.businessinsider.com/quit-amazon-job-anxiety-stress-2023-10",
          "urlToImage":
              "https://i.insider.com/653954fc96f7540cd0658dc1?width=1200&format=jpeg",
          "publishedAt": "2023-10-30T09:27:01Z",
          "content":
              "Navdeep Singh (Navi) quit his job at Amazon after two months because of work anxiety.Navdeep (Navi) Singh\r\n<ul>\n<li>Navdeep Singh is a former Amazon software engineer who experienced anxiety because … [+8560 chars]"
        },
        {
          "source": {"id": null, "name": "DIYphotography"},
          "author": "Dunja Djudjic",
          "title":
              "New York lawmakers propose stricter rules of kids on social media",
          "description":
              "After Maryland, Seattle, and Texas, New York is now taking a step against social media and its negative impacts of social media on children. Alarmed by rising cases of anxiety, depression, and self-harm among the youngest, state officials are zeroing in on po…",
          "url":
              "https://www.diyphotography.net/new-york-lawmakers-propose-stricter-rules-of-kids-on-social-media/",
          "urlToImage":
              "https://www.diyphotography.net/wp-content/uploads/2023/10/social-media-children-new-york.jpg",
          "publishedAt": "2023-10-13T16:28:15Z",
          "content":
              "After Maryland, Seattle, and Texas, New York is now taking a step against social media and its negative impacts of social media on children. Alarmed by rising cases of anxiety, depression, and self-h… [+2402 chars]"
        },
        {
          "source": {"id": null, "name": "WebMD"},
          "author": "Joanna Broder",
          "title":
              "Depression Linked to Ultra-Processed Foods, Artificial Sweeteners",
          "description":
              "Ultra-processed foods are energy-dense and ready-to-eat food items including things like processed breakfast meats, packaged snacks, and ice cream as well as artificially sweetened drinks.",
          "url":
              "https://www.webmd.com/diet/news/20231020/depression-linked-to-ultra-processed-foods-artificial-sweeteners",
          "urlToImage":
              "https://img.wbmdstatic.com/vim/live/webmd/consumer_assets/site_images/article_thumbnails/other/artificial_sweeteners_other/1800x1200_artificial_sweeteners_other.jpg",
          "publishedAt": "2023-10-20T18:25:14Z",
          "content":
              "Oct. 20, 2023 People who eat more ultra-processed foods particularly artificial sweeteners and-artificially sweetened drinks could be at higher risk of depression, according to new research.\r\nThe stu… [+1992 chars]"
        },
        {
          "source": {"id": null, "name": "Spring.org.uk"},
          "author": "Jeremy Dean",
          "title":
              "This Is The Surprising Depression Treatment Most People Get",
          "description":
              "Around 16 million people in the US are thought to suffer an episode of depression each year.",
          "url": "https://www.spring.org.uk/?p=98123",
          "urlToImage": "https://www.spring.org.uk/images/sad-5-2.jpg",
          "publishedAt": "2023-10-23T16:00:04Z",
          "content":
              "Around 16 million people in the US are thought to suffer an episode of depression each year.\r\nMost people diagnosed with depression get no treatment at all, research finds.\r\nOnly 35.7 percent of peop… [+1706 chars]"
        },
        {
          "source": {"id": null, "name": "Spring.org.uk"},
          "author": "Jeremy Dean",
          "title":
              "Antidepressants vs. Running: Which Treats Depression Better? (M)",
          "description":
              "The 16-week study gave people the choice between group running or taking antidepressants.",
          "url":
              "https://www.spring.org.uk/2023/11/antidepressants-vs-running.php",
          "urlToImage": "https://www.spring.org.uk/images/run-5.jpg",
          "publishedAt": "2023-11-06T18:00:00Z",
          "content":
              "The 16-week study gave people the choice between group running or taking antidepressants."
        },
        {
          "source": {"id": "new-scientist", "name": "New Scientist"},
          "author": "Clare Wilson",
          "title":
              "Psychedelic health claims may be promoting risky self-medication",
          "description":
              "Psychedelics such as psilocybin can cause dangerous psychotic experiences and should only be used as part of medical research, warns doctor",
          "url":
              "https://www.newscientist.com/article/2394987-psychedelic-health-claims-may-be-promoting-risky-self-medication/",
          "urlToImage":
              "https://images.newscientist.com/wp-content/uploads/2023/09/29162857/SEI_173860242.jpg",
          "publishedAt": "2023-10-07T11:35:02Z",
          "content":
              "Magic mushrooms contain the psychedelic drug psilocybin\r\nCannabis_Pic/Alamy\r\nPsychedelic drugs have promise for treating several mental health problems, but people shouldn’t self-medicate with them b… [+465 chars]"
        },
        {
          "source": {"id": null, "name": "NPR"},
          "author": "Suzanne Nuyen",
          "title":
              "Up First briefing: Concerns over Israel's war strategy; long COVID origins",
          "description":
              "The U.S. has concerns violence in Israel and Gaza could spread in the region. Scientists are one step closer to understanding what causes long COVID.",
          "url":
              "https://www.npr.org/2023/10/25/1208401426/up-first-briefing-concerns-over-israels-war-strategy-long-covid-origins",
          "urlToImage":
              "https://media.npr.org/assets/img/2023/10/25/gettyimages-1721975754_wide-56399db343500b80e201592466173d99d4ce57c6-s1400-c100.jpg",
          "publishedAt": "2023-10-25T12:00:32Z",
          "content":
              "Good morning. You're reading the Up First newsletter. Subscribe here to get it delivered to your inbox, and listen to the Up First podcast for all the news you need to start your day.\r\nToday's top st… [+5479 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Yoonji Han",
          "title":
              "Bertie Bowman ran away from home at 13 to sweep the steps of Capitol Hill. He died at 92 as the the longest-serving African-American Congressional staffer.",
          "description":
              "Bertie Bowman came to Washington, DC, as a runaway in 1944. He went on to have a decades-long career in the Senate.",
          "url":
              "https://www.businessinsider.com/herbert-bertie-bowman-longest-serving-black-american-congressional-staffer-obituary-2023-10",
          "urlToImage":
              "https://i.insider.com/6539464f96f7540cd0657263?width=1200&format=jpeg",
          "publishedAt": "2023-10-25T20:04:53Z",
          "content":
              "Bertie Bowman, the longest-serving African-American staffer on Capitol Hill.Bill Clark/Roll Call via Getty Images\r\n<ul><li>Herbert \"Bertie\" Bowman was the longest-serving African-American staffer on … [+5212 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Juliana Kaplan",
          "title": "How companies decide who to lay off",
          "description":
              "There's probably not a lot you can do to get off the layoff chopping block.",
          "url":
              "https://www.businessinsider.com/layoffs-2023-how-companies-decide-who-layoff-best-practices-2023-11",
          "urlToImage":
              "https://i.insider.com/6544078b36d588dc55c9b9a2?width=1200&format=jpeg",
          "publishedAt": "2023-11-05T11:08:01Z",
          "content":
              "Layoffs stink for everyone.Jackyenjoyphotography/Getty Images\r\n<ul><li>Over the last few years, many workers have faced layoffs, which can come as a nasty shock.</li><li>Teal Pennebaker, who works wi… [+5131 chars]"
        },
        {
          "source": {"id": null, "name": "New Atlas"},
          "author": "Paul McClure",
          "title": "Blind ketamine study yields surprising placebo effect",
          "description":
              "A new study into using ketamine to treat depression has yielded surprising results. Despite the unique way in which the researchers ensured the trial was ‘blind’, those who received a placebo had the same improvement in symptom severity as those administered …",
          "url":
              "https://newatlas.com/medical/blind-ketamine-study-yields-surprising-placebo-effect/",
          "urlToImage":
              "https://assets.newatlas.com/dims4/default/369ac33/2147483647/strip/true/crop/1578x828+0+112/resize/1200x630!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2F99%2Fe9%2F4825b75649da849d94e242f747b8%2Fdepositphotos-455662424-l.jpg&na.image_optimisation=0",
          "publishedAt": "2023-10-20T06:00:50Z",
          "content":
              "A new study into using ketamine to treat depression has yielded surprising results. Despite the unique way in which the researchers ensured the trial was blind, those who received a placebo had the s… [+3446 chars]"
        },
        {
          "source": {"id": null, "name": "Psychology Today"},
          "author": "Christopher M Palmer M.D.",
          "title": "Depression in Parents May Influence Children's Weight",
          "description":
              "The skyrocketing rates of obesity and mental illness are related. Integrating treatment and prevention strategies offers hope for better solutions.",
          "url":
              "https://www.psychologytoday.com/intl/blog/advancing-psychiatry/202310/depression-in-parents-may-influence-childrens-weight",
          "urlToImage":
              "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/field_blog_entry_images/2023-10/shutterstock_1404629135%20smaller.jpg?itok=mm5t6_Sx",
          "publishedAt": "2023-10-21T14:05:35Z",
          "content":
              "In the intricate web of human biology, the relationship between mental health and physical well-being has always fascinated researchers and clinicians alike. It is a dynamic interplay where one's men… [+3386 chars]"
        },
        {
          "source": {"id": null, "name": "Gizmodo.com"},
          "author": "Mack DeGeurin",
          "title":
              "'Invasive' Google Keyword Search Warrants Get Court Greenlight, Here's Everything You Need to Know",
          "description":
              "Colorado’s Supreme Court this week had the opportunity to hand down a historic judgment on the constitutionality of “reverse keyword search warrants,” a powerful new surveillance technique that grants law enforcement the ability to identify potential criminal…",
          "url":
              "https://gizmodo.com/reverse-keyword-search-warrants-explainer-colorado-1850945867",
          "urlToImage":
              "https://i.kinja-img.com/image/upload/c_fill,h_675,pg_1,q_80,w_1200/5e8c72a80aff7a9ca8a29014ab555ad6.jpg",
          "publishedAt": "2023-10-20T19:15:00Z",
          "content":
              "Colorados Supreme Court this week had the opportunity to hand down a historic judgment on the constitutionality of reverse keyword search warrants, a powerful new surveillance technique that grants l… [+15880 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "insider@insider.com (Michael Venutolo-Mantovani)",
          "title":
              "They got out of prison. Then the city gave them 7,200 — no strings attached.",
          "description":
              "All across America, giving people free cash is reducing homelessness, increasing employment, and improving health.",
          "url":
              "https://www.businessinsider.com/universal-basic-income-works-red-state-blue-state-2023-10",
          "urlToImage":
              "https://i.insider.com/6538417e356802a56be2eb61?width=1200&format=jpeg",
          "publishedAt": "2023-10-29T09:30:01Z",
          "content":
              "In the spring of 2022, Tydricka Lewis finally bought a car that started every time she asked it to and no longer left her stranded.\r\nHer 2020 Nissan Rogue was essential to her new job as a peer-suppo… [+12471 chars]"
        },
        {
          "source": {"id": null, "name": "NASA"},
          "author": "LaToya Dean",
          "title":
              "National Disability Employment Awareness Month and Addressing Misconceptions of Depression",
          "description":
              "The month of October marks National Disability Employment Awareness Month (NDEAM). The NDEAM observance was declared in 1988 by the United States Congress in efforts to raise awareness of disability employment needs and to celebrate the many and varied contri…",
          "url": "https://www.nasa.gov/general/ndeam/",
          "urlToImage":
              "https://www.nasa.gov/wp-content/uploads/2023/10/ndeam-23-social-media-english-linkdin-1200x627-1.png",
          "publishedAt": "2023-10-12T16:19:47Z",
          "content":
              "The month of October marks National Disability Employment Awareness Month (NDEAM). The NDEAM observance was declared in 1988 by the United States Congress in efforts to raise awareness of disability … [+3594 chars]"
        },
        {
          "source": {"id": null, "name": "Theonion.com"},
          "author": "Skyler Higley",
          "title":
              "Fetterman Encourages Gazan Child Who Lost Family In Airstrike To Try Therapy",
          "description":
              "WASHINGTON—Describing his own positive experience when he sought mental health treatment earlier this year, Sen. John Fetterman (D-PA) reportedly reached out Friday to a Gazan child who had lost his entire family in an airstrike and encouraged the boy to try …",
          "url":
              "https://www.theonion.com/fetterman-encourages-gazan-child-who-lost-family-in-air-1850990440",
          "urlToImage":
              "https://i.kinja-img.com/image/upload/c_fill,h_675,pg_1,q_80,w_1200/2a8924b89ec4def56151c20ef771739f.jpg",
          "publishedAt": "2023-11-03T19:40:00Z",
          "content":
              "WASHINGTONDescribing his own positive experience when he sought mental health treatment earlier this year, Sen. John Fetterman (D-PA) reportedly reached out Friday to a Gazan child who had lost his e… [+976 chars]"
        },
        {
          "source": {"id": null, "name": "Psychology Today"},
          "author": "Justin Garson Ph.D.",
          "title": "A Renaissance Secret for Overcoming Depression",
          "description":
              "Could a Renaissance masterpiece unlock the deeper meaning of depression?",
          "url":
              "https://www.psychologytoday.com/intl/blog/the-biology-of-human-nature/202310/a-renaissance-secret-for-overcoming-depression",
          "urlToImage":
              "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/teaser_image/blog_entry/2023-10/pexels-Nathan-Cowley.jpg?itok=FND0qR-6",
          "publishedAt": "2023-10-16T13:50:49Z",
          "content":
              "At 16, I was diagnosed with depression and hospitalized for six weeks in an adolescent psychiatric ward. I was taught that my depression was a chemical imbalance, and that drugs like Prozac somehow r… [+3974 chars]"
        },
        {
          "source": {"id": null, "name": "Psychology Today"},
          "author": "Christopher M Palmer M.D.",
          "title": "The Link Between Depression, Metabolism, and Mortality",
          "description":
              "While most people think of depression as a psychological problem, it can sometimes represent a metabolic problem.",
          "url":
              "https://www.psychologytoday.com/intl/blog/advancing-psychiatry/202310/the-link-between-depression-metabolism-and-mortality",
          "urlToImage":
              "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/teaser_image/blog_entry/2023-10/shutterstock_475790911%20%281%29%20copy_0.jpg?itok=lyBnsbVQ",
          "publishedAt": "2023-10-15T15:17:21Z",
          "content":
              "Depression is a common and often debilitating mental health condition. It has long been recognized for its profound impact on individuals' well-being. Rates of depression have been increasing for yea… [+3069 chars]"
        },
        {
          "source": {"id": null, "name": "The Indian Express"},
          "author": "Express News Service",
          "title": "Chef from Nepal dies by suicide at Chandigarh hotel",
          "description":
              "The police said that the victim had left behind a suicide note, in which he expressed his struggle with depression.",
          "url":
              "https://indianexpress.com/article/cities/chandigarh/chef-from-nepal-dies-by-suicide-at-chandigarh-hotel-8974864/",
          "urlToImage":
              "https://images.indianexpress.com/2023/10/jw-marriott-chef.jpg",
          "publishedAt": "2023-10-09T10:08:19Z",
          "content":
              "A 35-year-old chef employed at the JW Marriott Hotel in Sector 35 died by suicide inside the hotels kitchen on Monday, the police said.The deceased has been identified as Bharat Bahadur, a resident o… [+123 chars]"
        },
        {
          "source": {"id": null, "name": "Scientific American"},
          "author": "Simon Makin",
          "title": "A Nasty Tropical Skin Disease Is Now Endemic in the U.S.",
          "description":
              "A unique U.S. strain of leishmaniasis has just been reported",
          "url":
              "https://www.scientificamerican.com/article/a-nasty-tropical-skin-disease-is-now-endemic-in-the-u-s/",
          "urlToImage":
              "https://static.scientificamerican.com/sciam/cache/file/228E716A-6FA4-4DCE-90608A0408133AEF.jpg",
          "publishedAt": "2023-10-19T17:00:00Z",
          "content":
              "Cutaneous leishmaniasis is one of the “neglected tropical diseases,” a disparate group of conditions that affect some of the world’s poorest people and receive relatively little global attention. Cau… [+7241 chars]"
        },
        {
          "source": {"id": null, "name": "CNET"},
          "author": "Mandy Sleight",
          "title": "Boost Your Eye Health Daily With These 10 Tricks - CNET",
          "description":
              "Keep your eyes in good shape for years to come with these 10 natural, simple habits. Here's what you need to know.",
          "url":
              "https://www.cnet.com/health/personal-care/boost-your-eye-health-daily-with-these-10-tricks/",
          "urlToImage":
              "https://www.cnet.com/a/img/resize/32d6ba445affe648ce7b6c20dbda200269340625/hub/2023/06/13/e2aea40d-015b-4371-84e2-222ea486db33/gettyimages-123467483.jpg?auto=webp&fit=crop&height=675&width=1200",
          "publishedAt": "2023-11-03T14:00:09Z",
          "content":
              "If you've been blessed with good eye sight, it's easy to take your eyes for granted. However, vision problems can seriously affect your life over time. In fact, vision loss can lower your quality of … [+6150 chars]"
        },
        {
          "source": {"id": null, "name": "Gizmodo.com"},
          "author": "Linda Codega",
          "title":
              "Victor LaValle on Bringing Women's Perspectives Into The Changeling",
          "description":
              "Image: Apple TV+\r\nAuthor Victor LaValle and showrunner Kelly Marcel spoke to io9 at a press line after the panel for Apple TV+’s adaptation of The Changeling, talking about how to work within the confines of the novel, and when to push the boundaries of what’…",
          "url":
              "https://gizmodo.com/the-changeling-victor-lavalle-kelly-marcel-nycc-1850927492",
          "urlToImage":
              "https://i.kinja-img.com/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/b105a797493635af77f16e0f1e1dcde7.png",
          "publishedAt": "2023-10-14T16:10:00Z",
          "content":
              "Author Victor LaValle and showrunner Kelly Marcel spoke to io9 at a press line after the panel for Apple TV+s adaptation of The Changeling, talking about how to work within the confines of the novel,… [+1840 chars]"
        },
        {
          "source": {"id": null, "name": "Psychology Today"},
          "author": "Marlynn Wei M.D., J.D.",
          "title": "Hot Yoga Could Help Treat Depression, New Study Finds",
          "description":
              "New research finds hot yoga strikingly reduced the symptoms of moderate to severe depression.",
          "url":
              "https://www.psychologytoday.com/intl/blog/urban-survival/202310/hot-yoga-could-help-treat-depression-new-study-finds",
          "urlToImage":
              "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/teaser_image/blog_entry/2023-10/pexels-thirdman-6957968.jpg?itok=bEZK_kFL",
          "publishedAt": "2023-10-27T19:52:26Z",
          "content":
              "New research from Harvard Medical School's Massachusetts General Hospital published in the Journal of Clinical Psychiatry has found that hot yoga can reduce symptoms of depression by 50 percent or mo… [+4648 chars]"
        },
        {
          "source": {"id": null, "name": "AppleInsider"},
          "author": "news@appleinsider.com (William Gallagher)",
          "title":
              "Apple may use Vision Pro for mental health diagnosis and treatment",
          "description":
              "A new report claims that internally, Apple is discussing how Apple Vision Pro could detect signs of mental health issues, and perhaps also help treat them.Apple Vision ProApple has already been said to have more plans for Vision Pro use cases than it has anno…",
          "url":
              "https://appleinsider.com/articles/23/10/25/apple-may-use-vision-pro-for-mental-health-diagnosis-and-treatment",
          "urlToImage":
              "https://photos5.appleinsider.com/gallery/54976-111524-54793-110893-Vision-Pro-xl-xl.jpg",
          "publishedAt": "2023-10-25T13:29:12Z",
          "content":
              "Apple Vision Pro\r\nA new report claims that internally, Apple is discussing how Apple Vision Pro could detect signs of mental health issues, and perhaps also help treat them.\r\nApple has already been s… [+1773 chars]"
        },
        {
          "source": {"id": null, "name": "Phys.Org"},
          "author": "Science X",
          "title": "Scientists find two ways that hurricanes rapidly intensify",
          "description":
              "Hurricanes that rapidly intensify for mysterious reasons pose a particularly frightening threat to those in harm's way. Forecasters have struggled for many years to understand why a seemingly commonplace tropical depression or tropical storm sometimes blows u…",
          "url":
              "https://phys.org/news/2023-10-scientists-ways-hurricanes-rapidly.html",
          "urlToImage":
              "https://scx2.b-cdn.net/gfx/news/hires/2019/hurricane.jpg",
          "publishedAt": "2023-10-26T19:59:04Z",
          "content":
              "Hurricanes that rapidly intensify for mysterious reasons pose a particularly frightening threat to those in harm's way. Forecasters have struggled for many years to understand why a seemingly commonp… [+7307 chars]"
        },
        {
          "source": {"id": null, "name": "Spring.org.uk"},
          "author": "Jeremy Dean",
          "title": "A Worrying Mental Sign Of Vitamin D Deficiency",
          "description":
              "Vitamin D may be linked to critical neurotransmitters and inflammatory markers.",
          "url": "https://www.spring.org.uk/2023/11/mental-vidd.php",
          "urlToImage": "https://www.spring.org.uk/images/sad-24-1.jpg",
          "publishedAt": "2023-11-03T14:00:25Z",
          "content":
              "Vitamin D may be linked to critical neurotransmitters and inflammatory markers.\r\nFeeling low can be a sign of vitamin D deficiency, research suggests.\r\nVitamin D may be linked to critical neurotransm… [+1721 chars]"
        },
        {
          "source": {"id": null, "name": "The Atlantic"},
          "author": "Sarah Twombly",
          "title": "I Didn’t Know I Could Feel So Tired",
          "description":
              "My daughter’s rare condition means she almost never sleeps through the night. But for years, I blamed my parenting.",
          "url":
              "https://www.theatlantic.com/family/archive/2023/11/child-confusional-arousals-sleep-deprivation/675873/?utm_source=feed",
          "urlToImage": null,
          "publishedAt": "2023-11-02T13:38:54Z",
          "content":
              "I can count on two hands the number of times my daughter has slept through the night since she was born nearly nine years ago. The day I brought her home from the hospital, I laid her down for a nap,… [+8845 chars]"
        },
        {
          "source": {"id": null, "name": "The Atlantic"},
          "author": "Olga Khazan",
          "title": "Why Teen-Mental-Health Programs Keep Failing",
          "description":
              "Researchers gave teens therapy. Their mental health got worse.",
          "url":
              "https://www.theatlantic.com/ideas/archive/2023/11/teen-mental-health-dbt/675895/?utm_source=feed",
          "urlToImage": null,
          "publishedAt": "2023-11-06T12:00:00Z",
          "content":
              "You have to admit, it seemed like a great way to help anxious and depressed teens.Researchers in Australia assigned more than 1,000 young teenagers to one of two classes: either a typical middle-scho… [+8724 chars]"
        },
        {
          "source": {"id": "business-insider", "name": "Business Insider"},
          "author": "Erin Snodgrass",
          "title":
              "How an off-duty pilot who said he took psychedelic mushrooms could try and turn a plane's engines off mid-flight",
          "description":
              "An Alaska Airlines pilot pleaded not guilty to dozens of attempted murder charges after police say he tried to turn off a plane's engines mid-flight.",
          "url":
              "https://www.businessinsider.com/alaska-airlines-pilot-mushrooms-turn-planes-engines-off-2023-10",
          "urlToImage":
              "https://i.insider.com/65385fb896f7540cd064becb?width=1200&format=jpeg",
          "publishedAt": "2023-10-25T01:31:12Z",
          "content":
              "An Alaska Airlines Airbus A320.Thomas Pallini/Business Insider\r\n<ul><li>An off-duty pilot was charged with trying to turn off a plane's engines while riding in the cockpit. </li><li>The incident high… [+6850 chars]"
        },
        {
          "source": {"id": null, "name": "Psychology Today"},
          "author": "Samantha Boardman M.D.",
          "title": "7 Habits That Could Cut the Risk of Depression in Half",
          "description":
              "A healthy lifestyle can prevent depression, even in those who had a genetic predisposition.",
          "url":
              "https://www.psychologytoday.com/intl/blog/positive-prescription/202310/7-habits-that-could-cut-the-risk-of-depression-in-half",
          "urlToImage":
              "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/teaser_image/blog_entry/2023-10/shutterstock_1092362624.jpg?itok=3kl8UTtL",
          "publishedAt": "2023-10-19T18:25:38Z",
          "content":
              "We are what we repeatedly do. Aristotle\r\nYour answers to these seven questions have serious implications for your mental health:\r\n<ol><li>Do you get between 7 and 9 hours of sleep a night?</li><li>Ho… [+3865 chars]"
        },
        {
          "source": {"id": null, "name": "Biztoc.com"},
          "author": "statista.com",
          "title": "How Widespread are Depression, Stress and Anxiety?",
          "description":
              "World Mental Health Day falls on October 10 and this year its theme is Mental Health is a Universal Human Right. As Dr Poonam Khetrapal Singh, WHO Regional Director for South-East Asia, explains, this means: \"Every individual, regardless of their location, oc…",
          "url": "https://biztoc.com/x/be0374cf488d8802",
          "urlToImage": "https://c.biztoc.com/p/be0374cf488d8802/s.webp",
          "publishedAt": "2023-10-10T13:48:15Z",
          "content":
              "World Mental Health Day falls on October 10 and this year its theme is Mental Health is a Universal Human Right. As Dr Poonam Khetrapal Singh, WHO Regional Director for South-East Asia, explains, thi… [+279 chars]"
        },
        {
          "source": {"id": null, "name": "Adafruit.com"},
          "author": "Jessie Mae",
          "title": "Dr. Gladys West: The Hidden Figure Behind GPS Technology",
          "description":
              "Dr. Gladys West become a mathematician despite segregation, the Great Depression, and Jim Crow laws. Her work on the development of satellite geodesy models were later incorporated into the Global Positioning System (GPS). Scripps News shared this video on Yo…",
          "url":
              "https://blog.adafruit.com/2023/10/15/dr-gladys-west-the-hidden-figure-behind-gps-technology/",
          "urlToImage":
              "https://cdn-blog.adafruit.com/uploads/2023/10/dr-gladys-west-the-hidden-figure.jpg",
          "publishedAt": "2023-10-15T16:00:06Z",
          "content":
              "Adafruit publishes a wide range of writing and video content, including interviews and reporting on the maker market and the wider technology world. Our standards page is intended as a guide to best … [+2676 chars]"
        },
        {
          "source": {"id": null, "name": "Forbes"},
          "author":
              "Vitas Carosella, Contributor, \n Vitas Carosella, Contributor\n https://www.forbes.com/sites/vitascarosella/",
          "title":
              "Depression, Anxiety, Suicide: Mental Health Issues Plaguing Football",
          "description":
              "Mental health issues continue to plague the beautiful game, with young players especially susceptible. Rising Ballers and Football Yogis are helping combat these issues.",
          "url":
              "https://www.forbes.com/sites/vitascarosella/2023/11/02/depression-anxiety-suicide-mental-health-issues-plaguing-football/",
          "urlToImage":
              "https://imageio.forbes.com/specials-images/imageserve/65424d16fcaa7f8168f56448/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds",
          "publishedAt": "2023-11-02T17:00:30Z",
          "content":
              "The founders of U.K. football organization Rising Ballers, Eni Shabani (center), Brendon Shabani ... [+] (left) and Jamie Pollitt (right).\r\nCourtesy of Rising Ballers\r\nJuventus coach Massimiliano All… [+9402 chars]"
        },
        {
          "source": {"id": null, "name": "New Atlas"},
          "author": "Rich Haridy",
          "title":
              "Research uncovers why antidepressants can take weeks to start working",
          "description":
              "Using a new kind of neuroimaging tool, researchers have uncovered evidence to help explain how antidepressant medications work, and why they take so many weeks to kick in.Continue ReadingCategory: ScienceTags: Depression, Neuroscience, Brain, Drugs",
          "url":
              "https://newatlas.com/science/why-antidepressants-take-weeks-to-start-working/",
          "urlToImage":
              "https://assets.newatlas.com/dims4/default/43a9051/2147483647/strip/true/crop/7192x3776+0+512/resize/1200x630!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2Fb1%2Fea%2F936883c0409d83aa899a919b0002%2Fdepositphotos-179662026-xl.jpg&na.image_optimisation=0",
          "publishedAt": "2023-10-18T23:50:57Z",
          "content":
              "Using a new kind of neuroimaging tool, researchers have uncovered evidence to help explain how antidepressant medications work, and why they take so many weeks to kick in.\r\nFor the last few decades t… [+5247 chars]"
        },
        {
          "source": {"id": null, "name": "Thekitchn.com"},
          "author": "Apple Mandy",
          "title": "What Is SPAM Made of and How Do You Cook It?",
          "description": "The recipe options are endless!\nREAD MORE...",
          "url": "https://www.thekitchn.com/what-is-spam-made-of-23591459",
          "urlToImage":
              "https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_1500,ar_3:2/k%2FPhoto%2FSeries%2F2023-10-what-is-spam-made-of%2Fwhat-is-spam-made-of-018",
          "publishedAt": "2023-10-29T18:00:00Z",
          "content":
              "We independently select these products—if you buy from one of our links, we may earn a commission. All prices were accurate at the time of publishing.\r\nWhen it comes to canned meats, one brand has ma… [+3854 chars]"
        },
        {
          "source": {"id": null, "name": "Forbes"},
          "author":
              "Ana Faguy, Forbes Staff, \n Ana Faguy, Forbes Staff\n https://www.forbes.com/sites/anafaguy/",
          "title": "Postpartum Depression Linked To Air Pollution In New Study",
          "description":
              "Researchers suggest public health interventions could alleviate the burden of postpartum depression possibly caused by air pollution.",
          "url":
              "https://www.forbes.com/sites/anafaguy/2023/10/18/postpartum-depression-linked-to-air-pollution-in-new-study/",
          "urlToImage":
              "https://imageio.forbes.com/specials-images/imageserve/652fe27afb05549ef744ea59/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds",
          "publishedAt": "2023-10-18T15:00:01Z",
          "content":
              "Long-term exposure to air pollution during and after pregnancy increases the chances a woman could face postpartum depression, a study published Wednesday suggests, supporting previous research that … [+2906 chars]"
        },
        {
          "source": {"id": null, "name": "Psychology Today"},
          "author": "Suzanne Degges-White Ph.D.",
          "title": "Major Depressive Disorder: Could Nature Be a Cure?",
          "description":
              "Getting outside, being in nature, and moving our bodies may be key to helping address symptoms of depression. Integrating mindfulness could be especially helpful.",
          "url":
              "https://www.psychologytoday.com/intl/blog/lifetime-connections/202310/major-depressive-disorder-could-nature-be-a-cure",
          "urlToImage":
              "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/teaser_image/blog_entry/2023-10/nature-3053623_1280%20depression.jpg?itok=2kXyee_3",
          "publishedAt": "2023-10-31T19:43:08Z",
          "content":
              "Now that the seasons have changed and daylight savings time is doing the heavy lifting of shifting our circadian rhythms and our inner sense of time, there may be an uptick in symptoms of depression.… [+5923 chars]"
        },
        {
          "source": {"id": null, "name": "ReadWrite"},
          "author": "Anthony Martin",
          "title":
              "The Role of IoT in Providing Healthcare to the Aging Population",
          "description":
              "The aging population is one of the most rapidly growing demographics in the world. By 2050, the number of people […]\nThe post The Role of IoT in Providing Healthcare to the Aging Population appeared first on ReadWrite.",
          "url":
              "https://readwrite.com/the-role-of-iot-in-providing-healthcare-to-the-aging-population/",
          "urlToImage":
              "https://readwrite.com/wp-content/uploads/2023/09/Providing-Healthcare-to-Aging.jpg",
          "publishedAt": "2023-10-20T14:45:40Z",
          "content":
              "The aging population is one of the most rapidly growing demographics in the world. By 2050, the number of people aged 60 and over is projected to reach 2.1 billion, according to the WHO. However, thi… [+6835 chars]"
        },
        {
          "source": {"id": null, "name": "Calendar.com"},
          "author": "Calendar",
          "title": "Boost Your Productivity with Power Napping",
          "description":
              "In today’s fast-paced world, maintaining peak productivity can be challenging. Energy levels can wane as the hours go by, and our focus […]\nThe post Boost Your Productivity with Power Napping appeared first on ReadWrite.",
          "url":
              "https://www.calendar.com/blog/boost-your-productivity-with-power-napping/",
          "urlToImage":
              "https://readwrite.com/wp-content/uploads/2023/11/Power-Napping.jpg",
          "publishedAt": "2023-11-03T13:00:16Z",
          "content":
              "In todays fast-paced world, maintaining peak productivity can be challenging. Energy levels can wane as the hours go by, and our focus can drift. In turn, this can lead to decreased productivity, err… [+7467 chars]"
        },
        {
          "source": {"id": null, "name": "Psychology Today"},
          "author": "Peter Gray Ph.D.",
          "title": "Has Social Media Harmed Teens' Mental Health?",
          "description":
              "Multiple lines of research fail to provide convincing evidence that time on screens or social media accounts for the recent rise of depression and suicide in kids.",
          "url":
              "https://www.psychologytoday.com/intl/blog/freedom-to-learn/202311/has-social-media-harmed-teens-mental-health",
          "urlToImage":
              "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/teaser_image/blog_entry/2023-11/Lewis%20Ogden%20%3A%20Flicker.jpeg.jpg?itok=Gd0oNTfe",
          "publishedAt": "2023-11-02T13:33:21Z",
          "content":
              "This is the sixth in my series of posts aimed at understanding the causes of the changes in suicide rates among U.S. teenagers from 1950 to the present, which are depicted in the graph below. For sum… [+14109 chars]"
        },
        {
          "source": {"id": null, "name": "Techdirt"},
          "author": "Mike Masnick",
          "title":
              "KOSA Won’t Just Silence LGBTQ Voices; It Will Also Be Used To Hide Abortion Info From The Internet",
          "description":
              "We’ve highlighted in great detail how KOSA (the Kids Online Safety Act), sponsored by Senators Richard Blumenthal and Marsha Blackburn, which currently has an astounding 46 cosponsors, will be used to stifle LGBTQ voices. We know this because Republicans keep…",
          "url":
              "https://www.techdirt.com/2023/10/20/kosa-wont-just-silence-lgbtq-voices-it-will-also-be-used-to-hide-abortion-info-from-the-internet/",
          "urlToImage":
              "https://www.techdirt.com/wp-content/themes/techdirt/assets/images/td-rect-logo-white.png",
          "publishedAt": "2023-10-20T16:34:13Z",
          "content":
              "from the pay-attention dept\r\nWeve highlighted in great detail how KOSA (the Kids Online Safety Act), sponsored by Senators Richard Blumenthal and Marsha Blackburn, which currently has an astounding 4… [+5713 chars]"
        },
        {
          "source": {"id": null, "name": "New Atlas"},
          "author": "Paul McClure",
          "title":
              "Exposure to light at night found to increase risk of depression by 30%",
          "description":
              "A new study has found that exposure to light at night messes with our internal body clock, increasing the risk of mental illness, while daytime light exposure reduces that risk. The findings offer a simple and effective, non-pharmacological means of improving…",
          "url":
              "https://newatlas.com/health-wellbeing/exposure-to-light-at-night-found-to-increase-risk-of-depression-by-30/",
          "urlToImage":
              "https://assets.newatlas.com/dims4/default/8238293/2147483647/strip/true/crop/2000x1050+0+142/resize/1200x630!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2Fc6%2Fc0%2F3d97a16a41d7ac24b5fc871ac0b8%2Fdepositphotos-449745382-l.jpg&na.image_optimisation=0",
          "publishedAt": "2023-10-10T03:04:14Z",
          "content":
              "A new study has found that exposure to light at night messes with our internal body clock, increasing the risk of mental illness, while daytime light exposure reduces that risk. The findings offer a … [+2496 chars]"
        },
        {
          "source": {"id": null, "name": "The Indian Express"},
          "author": "PTI",
          "title":
              "Depression over Bay of Bengal likely to become low-intensity cyclone",
          "description":
              "\"The system is likely to further intensify into a deep depression over the next 24 hours. It will move northwestwards in the subsequent 12 hours and then move towards the Bangladesh-West Bengal coasts in the following three days,\" IMD added.",
          "url":
              "https://indianexpress.com/article/cities/bhubaneswar/depression-bay-of-bengal-low-intensity-cyclone-8994947/",
          "urlToImage":
              "https://images.indianexpress.com/2023/10/bay-of-bengal.jpg",
          "publishedAt": "2023-10-22T11:09:30Z",
          "content":
              "The depression over the Bay of Bengal may become a low-intensity cyclonic storm by October 24, the India Meteorological Department (IMD) said on Sunday.The depression lies centred around 610 km south… [+1379 chars]"
        },
        {
          "source": {"id": null, "name": "Psychology Today"},
          "author": "Terri Cheney",
          "title": "What a Bipolar Mixed State Really Feels Like",
          "description":
              "A Personal Perspective: The mixed state—a dangerous combination of mania and depression—is hard to describe but important to understand. Here's an insider's account.",
          "url":
              "https://www.psychologytoday.com/intl/blog/the-bipolar-lens/202311/what-a-bipolar-mixed-state-really-feels-like",
          "urlToImage":
              "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/teaser_image/blog_entry/2023-11/bipolarity-2207325_1280.jpg?itok=owK_LMGg",
          "publishedAt": "2023-11-03T21:37:38Z",
          "content":
              "Yesterday, I couldnt stand being inside my skin. It felt like a prison, this body of mine that didnt know what it wanted or why it was here.\r\nI squirmed through the day, fussing and eating and eating… [+3660 chars]"
        },
        {
          "source": {"id": null, "name": "Futurity: Research News"},
          "author": "Brandie Jefferson-WUSTL",
          "title": "Not everyone’s mental health took a hit during COVID",
          "description":
              "Not everyone suffered a blow to their mental health during the COVID-19 pandemic. \"We also found a lot of evidence of resilience.\"",
          "url":
              "https://www.futurity.org/covid-19-pandemic-mental-health-2984762/",
          "urlToImage":
              "https://www.futurity.org/wp/wp-content/uploads/2023/10/covid-19-mental-health-1600.jpg",
          "publishedAt": "2023-10-11T12:57:09Z",
          "content":
              "The COVID-19 pandemic did not affect everyone’s mental health in the same way, a new study shows.\r\nAt the height of the pandemic, the media and some mental health professionals began to speculate abo… [+4176 chars]"
        },
        {
          "source": {"id": null, "name": "Scientific American"},
          "author": "Anna Mattson",
          "title":
              "Treating Mental Health as Part of Climate Disaster Recovery",
          "description":
              "Mental health specialists discuss strategies for residents reexperiencing trauma in the aftermath of hurricanes, wildfires and floods",
          "url":
              "https://www.scientificamerican.com/article/treating-mental-health-as-part-of-climate-disaster-recovery/",
          "urlToImage":
              "https://static.scientificamerican.com/sciam/cache/file/699C7490-10EB-4E00-84A3C6F3682AA044.jpg",
          "publishedAt": "2023-10-17T11:00:00Z",
          "content":
              "The U.S. has had an unprecedented year of climate disasters—a relentless whirlwind of droughts, floods, cyclones and wildfires costing billions of dollars. Catastrophic events such as the firestorm i… [+9377 chars]"
        },
        {
          "source": {"id": null, "name": "mindbodygreen.com"},
          "author": "Hannah Frye",
          "title":
              "The Postpartum Depression Pill Is Here—But We Need To Talk About Prevention",
          "description": "A topic we cannot continue to ignore.",
          "url":
              "https://www.mindbodygreen.com/articles/postpartum-depression-prevention",
          "urlToImage":
              "https://mindbodygreen-res.cloudinary.com/image/upload/c_crop,x_0,y_125,w_2500,h_1405/c_fill,w_2000,h_1200,g_auto,fl_lossy,f_jpg/org/vmr7dnlunkbi0lp9f.jpg",
          "publishedAt": "2023-10-30T09:27:00Z",
          "content":
              "Its no secret that the United States falls behind many other countries when it comes to maternity leave. We offer 12 weeks of unpaid, job-protected leave while Bulgaria, for example, provides 410 day… [+2180 chars]"
        },
        {
          "source": {"id": "time", "name": "Time"},
          "author": "Jamie Ducharme",
          "title":
              "‘We’re In a New World’: American Teenagers on Mental Health and How to Cope",
          "description":
              "Photojournalist Robin Hammond interviewed dozens of U.S. teenagers about the challenges they face and how they maintain their mental health.",
          "url": "https://time.com/6320195/us-teen-mental-health-photos/",
          "urlToImage":
              "https://api.time.com/wp-content/uploads/2023/10/teen-mental-health-america-malayah.jpg?quality=85",
          "publishedAt": "2023-10-10T11:00:00Z",
          "content":
              "To be a U.S. teenager in 2023 is both the same as it ever was, and astoundingly different from even a generation ago. Along with all the classic challenges of growing upgrades, parents, first loveslo… [+5046 chars]"
        },
        {
          "source": {"id": null, "name": "GameSpot"},
          "author": "Claire Lewis",
          "title":
              "Fight Club Director David Fincher Doesn't \"Know How To Help\" Men Who Idolize Tyler Durden",
          "description":
              "In a recent interview with The Guardian, renowned director David Fincher gave some insight into his mindset regarding fans of one of his most celebrated films: 1999's cult hit, Fight Club. Though he's happy audiences appreciated the film, he fears some fans--…",
          "url":
              "https://www.gamespot.com/articles/fight-club-director-david-fincher-doesnt-know-how-to-help-men-who-idolize-tyler-durden/1100-6518800/",
          "urlToImage":
              "https://www.gamespot.com/a/uploads/screen_kubrick/1752/17528202/4214371-fightclub.jpg",
          "publishedAt": "2023-11-01T18:54:00Z",
          "content":
              "In a recent interview with The Guardian, renowned director David Fincher gave some insight into his mindset regarding fans of one of his most celebrated films: 1999's cult hit, Fight Club. Though he'… [+4071 chars]"
        },
        {
          "source": {"id": null, "name": "Spring.org.uk"},
          "author": "Jeremy Dean",
          "title": "The Surprising Personality Trait Linked To High IQ",
          "description":
              "Verbal IQ refers to being able to use language to achieve goals.",
          "url": "https://www.spring.org.uk/?p=98248",
          "urlToImage": "https://www.spring.org.uk/images/anxious-5.jpg",
          "publishedAt": "2023-10-29T17:00:32Z",
          "content":
              "Verbal IQ refers to being able to use language to achieve goals.\r\nPeople who are anxious have a higher verbal IQ, on average, research finds.\r\nIn particular, people with high IQs are more likely to r… [+1783 chars]"
        },
        {
          "source": {"id": null, "name": "mindbodygreen.com"},
          "author": "Hannah Frye",
          "title":
              "This Habit May Be Just As Effective For Depression As Medication, Study Finds",
          "description": "In a direct comparison.",
          "url":
              "https://www.mindbodygreen.com/articles/running-rivals-antidepressant-efficacy-in-new-study",
          "urlToImage":
              "https://mindbodygreen-res.cloudinary.com/image/upload/c_fill,w_2000,h_1200,g_auto,fl_lossy,f_jpg/org/9i37wmnrqkolp9ynx.jpg",
          "publishedAt": "2023-10-12T09:27:00Z",
          "content":
              "A recent study published in the Journal of Affective Disorders found that running therapy and antidepressants had similar effects on mental healthabout 44% of each group showed improvements in sympto… [+1763 chars]"
        },
        {
          "source": {"id": null, "name": "TMZ"},
          "author": "TMZ Staff",
          "title": "'General Hospital' Star Tyler Christopher Dead at 50",
          "description":
              "Tyler Christopher, famous for his work on \"General Hospital\" and \"Days of Our Lives,\" is dead. The soap star died Tuesday morning in his San Diego apartment, the result of a \"cardiac event\" ... according to his 'GH' costar Maurice Bernard. Tyler's…",
          "url":
              "https://www.tmz.com/2023/10/31/general-hospital-star-tyler-christopher-dead-dies-days-of-our-lives/",
          "urlToImage":
              "https://imagez.tmz.com/image/2b/16by9/2023/10/31/2b8720199ec14f35aef7f321da9ef85c_xl.jpg",
          "publishedAt": "2023-10-31T23:24:19Z",
          "content":
              "Tyler Christopher, famous for his work on \"General Hospital\" and \"Days of Our Lives,\" is dead.\r\nThe soap star died Tuesday morning in his San Diego apartment, the result of a \"cardiac event\" ... acco… [+772 chars]"
        },
        {
          "source": {"id": null, "name": "The New Yorker"},
          "author": "Nikhil Krishnan",
          "title": "How Can Determinists Believe in Free Will?",
          "description":
              "Some people think that we can’t be held responsible for what we do, given that our actions are the inevitable consequence of the laws of nature. They’re only half right.",
          "url":
              "https://www.newyorker.com/magazine/2023/11/13/determined-a-science-of-life-without-free-will-robert-sapolsky-book-review",
          "urlToImage":
              "https://media.newyorker.com/photos/6542de8305eb91fba6e6b197/16:9/w_1280,c_limit/231113_r43347.jpg",
          "publishedAt": "2023-11-06T11:00:00Z",
          "content":
              "Youre walking fast, late for work. The line into the subway is barely moving. A man is walking very slowly, holding up everyone behind him. Youre annoyed. And then you catch a glimpse of him. Hes wal… [+9325 chars]"
        },
        {
          "source": {"id": null, "name": "Thegospelcoalition.org"},
          "author": "Christine Chappell",
          "title": "4 Ways to Help a Depressed Mom",
          "description":
              "While depression care often requires professional help, laypeople in the church can offer valuable support. Find 4 ways to help a depressed mom.",
          "url":
              "https://www.thegospelcoalition.org/article/help-depressed-mom/",
          "urlToImage":
              "https://media.thegospelcoalition.org/wp-content/uploads/2023/10/04173716/help-depressed-mom.jpg",
          "publishedAt": "2023-10-14T04:02:00Z",
          "content":
              "You know her. Shes a friend or coworker. She goes to your church. Maybe shes in your small group or serves as a ministry leader. Perhaps shes your pastors wifemaybe shes your daughter. But surely som… [+5184 chars]"
        },
        {
          "source": {"id": null, "name": "Cracked.com"},
          "author": "Brian VanHooker",
          "title":
              "‘Garfield Minus Garfield’: The Man Who Popularized the Most Famous ‘Garfield’ Meme Is Still At It",
          "description":
              "It’s more quarterly than daily these days, but Dublin native Dan Walsh continues to happily tell the saddest chapter in the sad history of Jon Arbuckle",
          "url":
              "https://www.cracked.com/article_40100_garfield-minus-garfield-the-man-who-popularized-the-most-famous-garfield-meme-is-still-at-it.html",
          "urlToImage":
              "https://s3.crackedcdn.com/phpimages/article/3/6/5/956365.jpg",
          "publishedAt": "2023-11-04T13:00:00Z",
          "content":
              "Ever since the first Garfield strip in 1978, Jon Arbuckle has been kind of a loser. His human friends are nearly nonexistent, and until finally nabbing Liz (Garfields vet) in 2006, he was constantly … [+9404 chars]"
        },
        {
          "source": {"id": null, "name": "Marksdailyapple.com"},
          "author": "Mark Sisson",
          "title": "New and Noteworthy: What I Read This Week—Edition 241",
          "description":
              "Research of the Week\nA diabetes diagnosis lowers life expectancy.\nPea protein fares pretty well against whey protein, but the dose must be extremely high.\nAstaxanthin improves gut health.\nBetter alignment between light exposure and activity levels will reduce…",
          "url": "https://www.marksdailyapple.com/new-and-noteworthy-241/",
          "urlToImage":
              "https://marksdailyapple.com/uploads/2018/12/Mark-Fridays.jpg",
          "publishedAt": "2023-10-13T21:39:09Z",
          "content":
              "Research of the Week\r\nA diabetes diagnosis lowers life expectancy.\r\nPea protein fares pretty well against whey protein, but the dose must be extremely high.\r\nAstaxanthin improves gut health.\r\nBetter … [+2022 chars]"
        },
        {
          "source": {"id": null, "name": "Eonline.com"},
          "author": "Gabrielle Chung",
          "title":
              "Britney Spears Details Her Past Struggles With Postpartum Depression",
          "description":
              "More than a decade after overcoming postpartum depression, Britney Spears is feeling stronger.\nThe pop superstar reflected on her past mental health struggles in her highly anticipated memoir The...",
          "url":
              "https://www.eonline.com/news/1388488/britney-spears-details-postpartum-depression-struggles-after-welcoming-sons-sean-and-jayden-federline",
          "urlToImage":
              "https://akns-images.eonline.com/eol_images/Entire_Site/2023923/cr_1200x1200-231023153753-GettyImages-945582496_1.jpg?fit=around%7C1080:1080&output-quality=90&crop=1080:1080;center,top",
          "publishedAt": "2023-10-23T23:39:53Z",
          "content":
              "Kevin Federline told ITV in an August 2022 interview that Sean and Jayden chose not to attend their mom's wedding and \"have decided they are not seeing her right now,\" nor had they seen her for \"a fe… [+1532 chars]"
        },
        {
          "source": {"id": null, "name": "Pitchfork"},
          "author": "Matthew Ismael Ruiz",
          "title":
              "Watch Bad Bunny’s SNL Episode Featuring Lady Gaga, Mick Jagger, Pedro Pascal",
          "description":
              "He hosted and served as musical guest, performing “Un Preview” and “Monaco” from his new album",
          "url":
              "https://pitchfork.com/news/watch-bad-bunnys-snl-episode-featuring-lady-gaga-mick-jagger-pedro-pascal/",
          "urlToImage":
              "https://media.pitchfork.com/photos/65351e7ec11fb9c80719485d/16:9/w_1280,c_limit/bad-bunny.jpg",
          "publishedAt": "2023-10-22T13:07:38Z",
          "content":
              "In this sequel to a sketch from Pedro Pascals episode as host, Marcello Hernandez brings his white girlfriend home to meet his mom (Pedro Pascal) and Benito (his aunt). Moments after appearing, Pasca… [+1468 chars]"
        },
        {
          "source": {"id": null, "name": "NPR"},
          "author": "Jennifer Ludden",
          "title":
              "To tackle homelessness faster, LA has a kind of real estate agency for the unhoused",
          "description":
              "A Los Angeles program aggressively scouts vacant units and lobbies landlords in one of the country's tightest real estate markets. Some landlords offer up units even before putting them on the market.",
          "url":
              "https://www.npr.org/2023/10/24/1207461308/homelessness-housing-losangeles-la-real-estate-unhoused",
          "urlToImage":
              "https://media.npr.org/assets/img/2023/10/23/brilliantcorners-danvaldez-gwidyatmadja-21_wide-31e15df952d35853fb8d7a8fb3040812eea0931b-s1400-c100.jpg",
          "publishedAt": "2023-10-24T13:45:55Z",
          "content":
              "Dan Valdez, housing acquisitions manager for the nonprofit Brilliant Corners, checks out a recently leased property near downtown Los Angeles.\r\nGrace Widyatmadja/NPR\r\nLOS ANGELES Dan Valdez's mission… [+8637 chars]"
        },
        {
          "source": {"id": "polygon", "name": "Polygon"},
          "author": "Nicole Carpenter",
          "title":
              "James Corden’s appearance at Activision all-hands sounds like a joke",
          "description":
              "Activision Blizzard called its employees together Tuesday for an all-hands meeting, where former late-night host James Corden discussed the future of the company.",
          "url":
              "https://www.polygon.com/23912652/activision-all-hands-james-corden-bobby-kotick",
          "urlToImage":
              "https://cdn.vox-cdn.com/thumbor/o7Jo_MshFyeZLJXtlIM6SFV0TnU=/0x205:2256x1386/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/24994510/Screenshot__491_.png",
          "publishedAt": "2023-10-11T15:35:00Z",
          "content":
              "Days before Microsoft and Activision Blizzard are hoping to tie up its 68.7 billion merger, the Call of Duty publisher and Overwatch 2 developer brought all its employees together for an all-hands m… [+4527 chars]"
        },
        {
          "source": {"id": null, "name": "WebMD"},
          "author": "https://www.facebook.com/WebMD",
          "title": "Self-Care With Endometriosis",
          "description":
              "Endometriosis starts when cells that are like the ones that line your womb grow outside of it. It can affect many other parts of your body. Here are tips to live your best life with endometriosis.",
          "url":
              "https://www.webmd.com/women/endometriosis/features/endometriosis-self-care-tips",
          "urlToImage":
              "https://img.wbmdstatic.com/vim/live/webmd/consumer_assets/site_images/article_thumbnails/video/basics_fibro_video/650x350_basics_fibro_video.jpg",
          "publishedAt": "2023-10-30T17:05:18Z",
          "content":
              "SOURCES:\r\nCara King, DO, director, benign gynecologic surgery; associate program director of minimally invasive gynecologic surgery (MIGS), Cleveland Clinic.\r\nKen Sinervo, MD, medical director, Cente… [+2812 chars]"
        }
      ]
    };
    return res['articles'];
  }
}
