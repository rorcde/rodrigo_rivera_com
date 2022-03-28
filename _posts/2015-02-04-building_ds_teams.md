---
layout: page-fullwidth
title:  "Building Data Science Teams"
subheadline: The power of the technology stack
header: no
show_meta: true

---

A factor that is often overlooked when setting up a data team is the selection of the technology stack. Often, this decision is delegated to the first hire in data science. Due to a lack of information about the right technologies, those in charge avoid making a decision. There is a case to be made for building a multilingual team. Nevertheless, I would like to highlight the advantages of choosing a technology stack during the conceptualization of a data team:

### Hiring

More often than not, Internet companies looking for a data scientist phrase their current job openings like this: “Expert knowledge of an analysis tool such as R, Matlab, or SAS and ability to write efficient code in at least one language (preferably Java, C++, Python, or Perl)”. The problem here is that these are seven different skills for very different use cases. As a consequence, the company receives a huge variety of profiles and this does not help to ease the selection process at all.

It is important to distinguish between using exotic and sexy technologies to attract top talent and the tools that will be actually used for the day-to-day job. Therefore, it is possible to search for a data scientist who is proficient in Java and Scala but who will have the opportunity to work with Clojure. All three languages are part of the Java Virtual Machine, they are used extensively in the data science world and they complement each other. The team might actually only use Scala, but Clojure is used as bait to allure top candidates. Other popular choices here are the languages Julia and Haskell. However, be careful and do not overuse this strategy. A company should ask itself which technologies and programming languages they can and want to support. For example, other teams might already be working with them but for other tasks and it may be possible to do knowledge sharing.

Additionally, the company should analyze the realities of the job market. Some of the languages listed above are in great demand, but only small communities are able to use them. At the moment, trying to hire a good data engineer proficient in Python and based in Europe is a very difficult task. Despite salary tags, the market is dry. Companies have to look overseas for ideal candidates and deal with the added overhead. My experience has been that hiring a non-EU national and bringing him or her to continental Europe can take up to six months due to legal paperwork and relocation. Therefore, building a quality team can take at least one year of active searching and even longer with the wrong decisions regarding technology.

### Know-How

Similarly, as the team grows and time passes, they will accumulate expertise and a code base. People come and go but your technical debt stays. I have seen cases where technology choices were an afterthought and changes were painful. Data teams are similar to any other software team where migrations and major refactoring are significant undertakings that always come at a cost.

For example, one team decided to use R as their main programming language but months later realized that it did not fit in their pipeline; they migrated to Python and were set back by six months. Similarly, one team let their first data science hire freely choose his technology stack. The person decided to use Haskell, a relatively obscure programming language, as their main tool. One year later, the person left the company and now they have a codebase that cannot be maintained because they struggle to find appropriate talent.

Your team should not be dependent on specific contributors. Many people imagine that technologies are interchangeable and once you know one programming language or algorithm, you know all of them. Reality is very different. Everyone can learn a technology (programming language, storing, algorithm, API, etc.) in one weekend, but it takes much longer to produce results that can go to production code. Therefore, strategically select technologies together with other stakeholders and base the decision on which type of know-how you want to foster in the company.

### Team Culture

Every technology and machine learning technique has its own community and idiosyncrasies. This should be considered during the selection process, as you might be wooing individuals that might not be the right fit. Furthermore, using bleeding edge technology attracts a complete different type of profile than selecting tried and tested choices. As previously mentioned, hiring the right talent for data science is hard and takes time; you do not want to bring in somebody who fits on paper, but does not adapt and later leaves. The choice of technology plays a big role here.

Additionally, do not underestimate the risks of working with the bleeding edge. It tends to attract top candidates willing to accept less competitive packages. However, the cutting edge tends to be unstable, sometimes poorly documented and often it is not fully understood how to scale it best. Similarly, not everyone in the team might be able to embrace it with the speed that you require. This can be very frustrating and toxic for your team culture if the team hits a wall and cannot go into production due to poor technology choices. Hence, if you are under a tight deadline, adopting a new technology can be detrimental for the team performance.

### Projects

The type of projects and the scope of the team will have a significant influence on the choice of technology. Some stacks are better suited for some use cases than others. For example, a data science team with a focus on analytics and ad-hoc reporting works perfectly under an R-centric or Python stack. On the other hand, a team requiring robust recommender systems or fraud detection might be better served with the JVM or even with C++.

In the early days of the team, the scope might not be clear. Nonetheless, it is important to discuss the type of potential projects that can fall in the area of responsibility of the team during the planning stage. If after these discussions, the mission of the team is not clarified, then it is better to make use of general technologies where the pool of candidates is larger.

The question therefore arises: Which technologies should I choose for my stack? The answer is not simple and this article only touches on some of the factors to consider. I will dedicate future posts to this subject, but for now you can use this rule of thumb: If your data qualifies as big data, then go for JVM-related technologies. If it does not, go for the Python or R ecosystem. These technology choices have robust libraries for the whole value chain (ETL, middleware, analytics, visualization, etc.), most of them are well documented, there is talent available and the ecosystems are solid enough to offer peace of mind to your CTO yet modern enough to attract top talent.

How did you decide, which technology stack is the best for your data science team? Which factors came into play?

This article originally appeared in http://venturebeat.com/2015/01/31/building-data-science-teams-the-power-of-the-technology-stack/