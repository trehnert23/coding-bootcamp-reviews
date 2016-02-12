require 'ffaker'

ga = Bootcamp.create(name: 'General Assembly - SF', email: 'sf@generalassemb.ly', phone: '+1 (415) 592-6885', url: 'https://generalassemb.ly/', photo: 'https://generalassemb.ly/online/assets/ga-lockup-logo-9d95d5d0a1c966540edaedcb440b1963.png', address: '5th Floor, 225 Bush St, San Francisco, CA 94104', information: 'General Assembly is a global network of campuses for technology, business, and design. General Assembly offers many different ways to learn important skills taught by top practitioners with real-world experience.', faq: 'https://generalassemb.ly/faq', courses: 'Web Development Immersive| User Expereience Design Immersive| Product Management Immersive| Back End Web Development| Visual Design| Data Science| Front End Web Development| Digital Marketing| Mobile Development')

hr = Bootcamp.create(name: 'Hack Reactor', email: 'admissions@hackreactor.com', phone: '+1 (415) 547-0254', url: 'http://www.hackreactor.com/', photo: 'http://code-ninja.co/images/blog/Hack-Reactor-Blog.png', address: '944 Market St #8, San Francisco, CA 94102', information: 'You’ll begin Hack Reactor with a feeling of excitement and anticipation. Twelve weeks later, you’ll follow the footsteps of our trailblazing alumni, taking the methodologies and best practices you perfected at our coding bootcamp to your next job. We’ve built world class software engineering curriculum and programming courses. However, Hack Reactor is, above all else, a world-class learning environment.', faq: 'http://www.hackreactor.com/questions', courses: 'Full Stack Web Development')

ax = Bootcamp.create(name: 'AcademyX', email: 'info@academyx.com', phone: '(415) 392-8024', url: 'http://www.academyx.com/', photo: 'https://media.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAAZeAAAAJDk3ZmUyZmNiLWVmMWUtNDk0ZC1iM2ZkLTgxNjIzZGVjOGEwNA.png', address: '601 Montgomery St., Suite 409, San Francisco, CA 94111', information: "Average of 5 students per class, each with their own workstation, State-of-the-art facilities at convenient locations, In business for over 14 years, we've trained over 15,000 students, 'One free retake' policy and follow-up support 2,000 Facebook 'likes' and Google '+1s' and thousands of positive reviews", faq: 'http://www.academyx.com/contact/information/', courses: 'Microsoft Desktop | Adobe Desktop | Web Design | Programming | Microsoft Technical | Adobe Technical | Web Marketing | Web Programming | Other')

acltc = Bootcamp.create(name: 'Anyone Can Learn to Code', email: 'hello@anyonecanlearntocode.com', phone: 'Not Listed', url: 'http://anyonecanlearntocode.com/', photo: 'https://course_report_production.s3.amazonaws.com/rich/rich_files/rich_files/85/s300/anyone-can-learn-to-code-logo.png', address: '77 Geary St, San Francisco, CA 94108', information: 'At ACLTC, we believe that education involves much more than simply conveying information — it’s about studying and understanding how people think and learn as well as designing ways to ensure that students truly grasp the material at hand. We understand that every individual has a different way of thinking and that each new concept requires a unique approach. Even the most advanced subject-matter experts must also be well-trained educators, or the result will be a frustrating experience for students.', faq: 'http://anyonecanlearntocode.com/faqs', courses: 'Full Stack Web Development')

aa= Bootcamp.create(name: 'App Academy', email: 'contact@appacademy.io', phone: 'Not Listed', url: 'http://www.appacademy.io/', photo: 'http://appacademy.io/assets/site/app-academy-logo-sharing.png', address: '1061 Market St #4, San Francisco, CA 94103', information: "Over twelve weeks, you'll learn all the skills needed to begin a career as a web developer. Through hands-on projects, we train you to build web applications with Ruby on Rails, JavaScript, and React/Flux. Prior programming experience isn't required. However, you will need lots of tenacity and a passion for building cool stuff.", faq: 'http://www.appacademy.io/faq', courses: 'Full Stack Web Development')

ai = Bootcamp.create(name: 'Apprentice.io', email: 'hello@thoughtbot.com', phone: '+1 (877) 9-ROBOTS', url: 'http://www.apprentice.io/', photo: 'https://jessieay.files.wordpress.com/2013/03/thoughtbot.png', address: '85 2nd St Suite 700, San Francisco, CA 94105', information: "The paid apprenticeship lasts 3 months. During the 3 months, you work alongside designers and developers at thoughtbot on real projects, and are assigned a Mentor who is your primary instructor. You also work on special projects designed to give you additional time and training in the areas you most need. In the final month, if things have gone well, you are promoted to a full designer or developer at thoughtbot. Or we'll connect you with other great potential employers.", faq: 'Not Listed', courses: 'Web Developer Apprenticeship')

bnr = Bootcamp.create(name: 'Big Nerd Ranch', email: 'Not Listed', phone: '(770) 817-6373', url: 'https://www.bignerdranch.com/', photo: 'https://www.bignerdranch.com/img/bnr-logo-square.png', address: 'Asilomar Conference Grounds, 800 Asilomar Avenue, Pacific Grove, CA 93950-3704', information: "A Ranch in the West... What could be more natural? Forget about chores like pitching hay. Your only task here is to soak up the coding wisdom offered by our instructors in this lodge by the sea. At Big Nerd Ranch West, we're only 90 minutes away from the San Francisco area and three airports—so close, in fact, you can smell the silicon. After class, rewind with your classmates, telling tales of love and app development around the fire ring. Or ponder together the vast possibilities of code as you stare out into the Pacific from the boardwalk. You'll emerge a better, stronger nerd.", faq: 'https://www.bignerdranch.com/blog/?q=', courses: 'Advanced iOS Bootcamp | OpenGL ES Bootcamp | Beginning iOS with Swift | iOS with Swift for the Enterprise Bootcamp | iOS Bootcamp - Fast Track with Swift | Advanced Android | Cocoa Fast Track Bootcamp | Android Fundamentals')

cp = Bootcamp.create(name: 'CodePath', email: 'contact@codepath.com', phone: 'Not Listed', url: 'https://codepath.com/', photo: 'https://cdn.evbuc.com/images/8375259/1355037326/1/logo.png', address: '699 8th St, San Francisco, CA', information: 'CodePath is an organization that provides free, accelerated mobile engineering classes for professional developers and designers.
Students must pass a rigorous selection process to be admitted to any of our programs. During the program, engineers submit weekly projects for review and work with other top engineers and designers. The program concludes with a demo day where the top group projects are judged by a panel of notable mobile and engineering leaders.', faq: 'Not Listed', courses: 'iOS for Engineers | iOS (Swift) for Designers | Android for Engineers | Android for Designers')

cc = Bootcamp.create(name: 'Coder Camps', email: 'Not Listed', phone: '(855) 755-2267', url: 'https://www.codercamps.com/', photo: 'https://course_report_production.s3.amazonaws.com/rich/rich_files/rich_files/907/s300/coder-camps-logo.png', address: '401 Grand Ave Suite 450 Oakland, CA 94610', information: 'Intense and immersive learning programs that teach you real-world programming skills that successful businesses are looking to employ. Coder Camps is the world leader in intensive programming instruction, without the financial hardships or time constraints of other camps.', faq: 'https://www.codercamps.com/Home/GeneralFAQ', courses: 'Coding from Scratch | Free HTML/CSS | Full Stack .NET Immersive | Full Stack JavaScript Immersive | Full Stack Java Immersive | Full Stack Ruby Immersive | Self-Paced Full Stack .NET | Self-Paced Full Stack JavaScript')

csl = Bootcamp.create(name: 'CodeStream Labs', email: 'info@codestreamlabs.com', phone: '415-741-7837', url: 'http://www.codestreamlabs.com/', photo: 'https://course_report_production.s3.amazonaws.com/rich/rich_files/rich_files/523/s300/zp4k3njq.png', address: '505 Montgomery Street 11th Floor San Francisco, CA', information: 'This is CodeStream Labs Professionals at CodeStream Labs who possess extensive knowledge in the fields of website development, user interface design, and full scale web application deployment are continuously involved in the latest frameworks and the most powerful development languages and practices. Welcome to where many have already read and harvested the hands-on style which CodeStream Labs has sown without fail over many years.', faq: 'http://www.codestreamlabs.com/ (click on faq)', courses: 'Full Stack Web Developer | Ruby on Rails Developer | UX Designer | Android Mobile Developer | iOS Mobile Developer')

ca = Bootcamp.create(name: 'Codify Academy', email: 'admissions@codifyacademy.com', phone: '(415) 980-3589', url: 'http://codifyacademy.com/', photo: 'http://codifyacademy.com/img/logoSm.png', address: '535 Mission st. San Francisco, CA 94105 ', information: "Our part-time program allows you to keep working while you're heading for that new developer job. Our industry mentors guide you through the job hunting process and show you how to land your dream job. Codify Academy teaches the skills needed to get hired as a full-time web developer in only 16 weeks.", faq: 'http://codifyacademy.com/faq.php', courses: 'Full Stack Web Development')

cd = Bootcamp.create(name: 'Coding Dojo', email: 'Not Listed', phone: '(408) 519-3392', url: 'http://www.codingdojo.com/', photo: 'http://www.coderdojowa.org.au/assets/logo-ac6abf3301c05f3f70ae827520bb123b.png', address: '1980 Zanker Road San Jose, CA 95112', information: 'We supply the most rigorous, comprehensive full-stack web development training programs to meet the career goals of both aspiring developers and industry veterans. Take the first step, and we’ll help you learn what you didn’t think was possible in just a matter of weeks!', faq: 'http://www.codingdojo.com/faq', courses: 'Onsite Flex Bootcamp | Online Bootcamp | Dev Accelerators | Evening Course')

db = Bootcamp.create(name: 'Dev Bootcamp', email: 'https://devbootcamp.desk.com/customer/portal/emails/new', phone: 'Not Listed', url: 'http://devbootcamp.com/', photo: 'https://pbs.twimg.com/profile_images/634740140003295234/bpnVhq8Z.jpg', address: '633 Folsom Street (at Hawthorne) 6th Floor, San Francisco, CA 94107', information: 'Dev Bootcamp pioneered the short-term immersive “web development bootcamp,” a model that transforms beginners into full-stack web developers. Through effort, community support and training, we help beginners with little or no technical background reach a level of proficiency that allows them to get paid to continue learning on the job as junior web developers.', faq: 'https://devbootcamp.desk.com/', courses: 'Full Stack Web Development')

fb = Bootcamp.create(name: 'Fire Bootcamp', email: 'Not Listed', phone: 'Not Listed', url: 'http://firebootcamp.com/', photo: 'https://course_report_production.s3.amazonaws.com/rich/rich_files/rich_files/149/s300/firebootcamp-logo-retina.png', address: 'Not Listed', information: 'From the beginner to the pro, BootCamp is made for developers.', faq: 'http://firebootcamp.com/faq/', courses: 'FireBootCamp Ultra: Enterprise MVC (9 Weeks) | FireBootCamp Core: Enterprise MVC (4 Weeks) | FireBootCamp Mini: Enterprise (MVC 2 Day Essentials) | FireBootCamp Ultra: Enterprise Xamarin mobile apps (5 Weeks) | FireBootCamp Mini: Enterprise Xamarin Cross-platform Development (2 Day Essentials)')

glv = Bootcamp.create(name: 'Galvanize', email: 'info@galvanize.com', phone: '(415) 805-1888', url: 'http://www.galvanize.com/', photo: 'http://startupbeat.com/wp-content/uploads/2016/02/Galvanize-Logo-Text-Logo-.png', address: '44 Tehama St San Francisco CA 94105', information: 'Galvanize Full Stack is a 24-week program that teaches you how to make an impact as a contributing member of a development team. The program culminates in hiring day, where students meet potential employers, present projects, and show off everything they’ve learned.', faq: 'Not Listed', courses: 'Full Stack | Data Science | Data Engineering | Galvanize U - Data Science | Workshops')

ha = Bootcamp.create(name: 'Hackbright Academy', email: 'Not Listed', phone: '415-887-2215', url: 'https://hackbrightacademy.com/', photo: 'https://course_report_production.s3.amazonaws.com/rich/rich_files/rich_files/84/s300/hackbright-academy-logo.jpg', address: '683 Sutter St. San Francisco, CA 94102', information: 'We offer an intensive 12 week program. The first 10 weeks are formal instruction which includes a structured curriculum, regularly scheduled lectures and a fully staffed Education team. During the remaining 2 weeks students will be working closely with Career Services as they prepare for their job search. This includes but is not limited to: career workshops and hosted career breakfasts, white boarding practice, resume building and interview preparation.', faq: 'https://hackbrightacademy.com/faq/', courses: 'Full Stack Web Development')

hca = Bootcamp.create(name: 'Hacker Coding Academy', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

hsf = Bootcamp.create(name: 'Hackership San Francisco', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

ivc = Bootcamp.create(name: 'iNVASIVECODE', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

ku = Bootcamp.create(name: 'Koru', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

ltl = Bootcamp.create(name: 'LearnTech Labs', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

ms = Bootcamp.create(name: 'Make School', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

msq = Bootcamp.create(name: 'MakerSquare', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

mrc= Bootcamp.create(name: 'Marcademy', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

mts= Bootcamp.create(name: 'Metis', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

mma = Bootcamp.create(name: 'Mobile Makers Academy', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

ps = Bootcamp.create(name: 'Product School', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

ru = Bootcamp.create(name: 'Rocket U', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

scc = Bootcamp.create(name: 'Square Code Camp', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

tkf = Bootcamp.create(name: 'Thinkful', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

tdc = Bootcamp.create(name: 'Tradecraft', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')

zfa = Bootcamp.create(name: 'Zipfian Academy', email: '', phone: '', url: '', photo: '', address: '', information: '', faq: '', courses: '')



answer = ['Employed', 'Not Employed', 'Still Attending', 'Not Looking']

worth = ['Yes', 'No']

bc = [ga,hr,ai,aa,bnr,ax,acltc]

# ,cp,cc,csl,ca,cd,db,fb,glv,ha,hca,hsf,ivc,ku,ltl,ms,msq,mrc,mts,mma,ps,ru,scc,tkf,tdc,zfa


100.times do
  user = User.create(
    username: FFaker::Internet::user_name,
    email: FFaker::Internet::email,
    password: "password"
  )

  review = BootcampReview.create(content: FFaker::HipsterIpsum::paragraph, campus: rand(7 .. 10), worthit: worth[rand(0 .. 1)], location: rand(4 .. 7), jobhelp: rand(5 .. 10), hired: answer[rand(0 .. 3)])

  user.bootcamp_reviews << review
  bc[rand(0 .. 6)].bootcamp_reviews << review

end

100.times do
  user = User.create(
    username: FFaker::Internet::user_name,
    email: FFaker::Internet::email,
    password: "password"
  )

  review = BootcampReview.create(content: FFaker::HipsterIpsum::paragraph, campus: rand(6 .. 9), worthit: worth[rand(0 .. 1)], location: rand(3 .. 6), jobhelp: rand(5 .. 9), hired: answer[rand(0 .. 3)])

  user.bootcamp_reviews << review
  bc[rand(0 .. 6)].bootcamp_reviews << review

end

100.times do
  user = User.create(
    username: FFaker::Internet::user_name,
    email: FFaker::Internet::email,
    password: "password"
  )

  review = BootcampReview.create(content: FFaker::HipsterIpsum::paragraph, campus: rand(7 .. 10), worthit: worth[rand(0 .. 1)], location: rand(5 .. 8), jobhelp: rand(5 .. 9), hired: answer[rand(0 .. 3)])

  user.bootcamp_reviews << review
  bc[rand(0 .. 6)].bootcamp_reviews << review

end

100.times do
  user = User.create(
    username: FFaker::Internet::user_name,
    email: FFaker::Internet::email,
    password: "password"
  )

  review = BootcampReview.create(content: FFaker::HipsterIpsum::paragraph, campus: rand(7 .. 10), worthit: worth[rand(0 .. 1)], location: rand(5 .. 8), jobhelp: rand(5 .. 9), hired: answer[rand(0 .. 3)])

  user.bootcamp_reviews << review
  bc[rand(0 .. 6)].bootcamp_reviews << review

end

