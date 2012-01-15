class PabsController < ApplicationController
  def new
    @pab = Pab.new
    
    @user_id = current_user.id

    @stem1 = "1. If my child becomes angry because he/she is sick or hurt and can't go to his/her friend's birthday party, I would:"
    @stem2 = "2. If my child falls off his/her bike and breaks it, and then gets sad and cries, I would:"
    @stem3 = "3. If my child loses some prized possession and reacts with tears, I would:"
    @stem4 = "4. If my child is afraid of injections/shots and becomes quite shaky and teary while waiting for his/her turn to get a shot, I would:"
    @stem5 = "5. If my child is going over to spend the afternoon at a friend's house and becomes nervous and upset because I can't stay there with him/her, I would:"
    @stem6 = "6. If my child is participating in some group activity with his/her friends and proceeds to make a mistake and then looks embarrassed and is about to cry, I would:"
    @stem7 = "7. If my child is about to appear in a recital or sports activity and becomes visibly nervous about people watching him/her, I would:"
    @stem8 = "8. If my child receives an undesirable birthday gift from a friend and looks obviously disappointed after opening it in the presence of the friend, I would:"
    @stem9 = "9. If my child is panicky and can't go to sleep after watching a scary TV show, I would:"
    @stem10 = "10. If my child is playing with other children and one of them calls him/her names, and my child then becomes tearful, I would:"
    @stem11 = "11. If my child yells and kicks the shopping cart when he/she cannot have a toy when we are grocery shopping, I would:"
    @stem12 = "12. If my child begins to cry because he/she has just learned that his/her first pet has died, I would:"
    @stem13 = "13. If my child becomes angry because he/she has to go to after school tutoring instead of a fun activity, I would:"
    @stem14 = "14. If my child yells and throws a game piece after losing a game he/she was playing, I would:"
    @stem15 = "15. If my child is presenting his/her book report in class that day and becomes nervous and upset about speaking in front of the class, I would:"
    @stem16 = "16. If my child throws his/her pencil or crumples up his/her paper in frustration while working on his/her homework assignments, I would:"

    @question1_a = "a. send my child to his/her room to cool off"
    @question1_b = "b. get angry at my child"
    @question1_c = "c. help my child think about ways that he/she can still be with friends (e.g., invite some friends over after the party)"
    @question1_d = "d. tell my child not to make a big deal out of missing the party"
    @question1_e = "e. encourage my child to express his/her feelings of anger and frustration"
    @question1_f = "f. soothe my child and do something fun with him/her to make him/her feel better about missing the party"
    @question1_g = "g. say nothing, but give my child a look to keep him/her in line"
    @question1_h = "h. just wait until he/she calms down"

    @question2_a = "a. remain calm and not let myself get anxious"
    @question2_b = "b. comfort my child and try to get him/her to forget about the accident"
    @question2_c = "c. tell my child that he/she is over reacting"
    @question2_d = "d. help my child figure out how to get the bike fixed"
    @question2_e = "e. tell my child it's ok to cry"
    @question2_f = "f. tell my child to stop crying or he/she won't be allowed to ride his/her bike anytime soon"
    @question2_g = "g. do nothing about my child\'s crying and deal with the bike"
    @question2_h = "h. say nothing, but give my child a look that expresses my feelings	about that behavior"

    @question3_a = "a. get upset with him/her for being so careless and then crying about it"
    @question3_b = "b. tell my child that he/she is over reacting"
    @question3_c = "c. help my child think of places he/she hasn't looked yet"
    @question3_d = "d. distract my child by talking about happy things"
    @question3_e = "e. tell him/her it\'s ok to cry when you feel unhappy"
    @question3_f = "f. tell him/her that's what happens when you\'re not careful"
    @question3_g = "g. give my child a firm look to let him/her know that I disapprove"
    @question3_h = "h. let my child cry it out but be around if my child wants me"

    @question4_a = "a. tell him/her to shape up or he/she won\'t be allowed to do something he/she likes to do (e.g., watch TV)"
    @question4_b = "b. encourage my child to talk about his/her fears"
    @question4_c = "c. tell my child not to make big deal of the shot"
    @question4_d = "d. tell him/her not to embarrass us by crying"
    @question4_e = "e. comfort him/her before and after the shot"
    @question4_f = "f. talk to my child about ways to make it hurt less (such as relaxing so it won\'t hurt or taking deep breaths)"
    @question4_g = "g. not say anything but let my child calm down on his/her own"
    @question4_h = "h. say nothing, but give my child a look that expresses my feelings about that behavior."

    @question5_a = "a. distract my child by talking about all the fun he/she will have with his/her friend"
    @question5_b = "b. help my child think of things that he/she could do so that being at the friend\'s house without me wasn\'t scary (e.g., take a favorite book or toy with him/her)"
    @question5_c = "c. tell my child to quit over reacting and being a baby"
    @question5_d = "d. tell the child that if he/she doesn\'t stop that he/she won\'t be allowed to go out anymore"
    @question5_e = "e. feel upset and uncomfortable because of my child\'s reactions"
    @question5_f = "f. encourage my child to talk about his/her nervous feelings"
    @question5_g = "g. ignore my child\'s reaction and continue with the plan"
    @question5_h = "h. give my child a firm look to indicate that that behavior is not appropriate"

    @question6_a = "a. comfort my child and try to make him/her feel better"
    @question6_b = "b. tell my child that he/she is over reacting"
    @question6_c = "c. feel uncomfortable and embarrassed myself"
    @question6_d = "d. tell my child to straighten up or we\'ll go home right away"
    @question6_e = "e. encourage my child to talk about his/her feelings of embarrassment"
    @question6_f = "f. tell my child that I'll help him/her practice so that he/she can do better next time"
    @question6_g = "g. give my child a firm look to let him/her know that I disapprove"
    @question6_h = "h. do nothing about the situation and let my child deal with the situation on his/her own"

    @question7_a = "a. help my child think of things that he/she could do to get ready for his/her turn (e.g., to do some warm ups and not to look at the audience)"
    @question7_b = "b. suggest that my child think about something relaxing so that his/her nervousness will go away"
    @question7_c = "c. remain calm and not get nervous myself"
    @question7_d = "d. tell my child that he/she is being a baby about it"
    @question7_e = "e. tell my child that if he/she doesn\'t calm down, we\'ll have to leave and go home right away"
    @question7_f = "f. encourage my child to talk about his/her nervous feelings"
    @question7_g = "g. not do anything"
    @question7_h = "h. give my child a firm look indicating that I expect my child to control his/her behavior"

    @question8_a = "a. encourage my child to express his/her disappointed feelings"
    @question8_b = "b. tell my child that the present can be exchanged	for something the child wants"
    @question8_c = "c. NOT be annoyed with my child for being rude"
    @question8_d = "d. tell my child that he/she is over reacting"
    @question8_e = "e. scold my child for being insensitive to the	friend\'s feelings"
    @question8_f = "f. try to get my child to feel better by doing something fun"
    @question8_g = "g. give my child a firm look to indicate it is time to change his/her behavior"
    @question8_h = "h. just ignore my child\'s facial expression"

    @question9_a = "a. encourage my child to talk about what scared him/her"
    @question9_b = "b. get upset with him/her for being silly"
    @question9_c = "c. tell my child that he/she is over reacting"
    @question9_d = "d. help my child think of something to do so that he/she can get	to sleep (e.g., take a toy to bed, leave the lights on)"
    @question9_e = "e. tell him/her to go to bed or he/she won\'t be allowed to	watch any more TV"
    @question9_f = "f. do something fun with my child to help him/her forget	about what scared him/her"
    @question9_g = "g. not do anything different from any other night"
    @question9_h = "h. give my child a firm look that expresses how I feel about	that reaction"

    @question10_a = "a. tell my child not to make a big deal out of it"
    @question10_b = "b. feel upset myself"
    @question10_c = "c. tell my child to behave or we\'ll have to go home right away"
    @question10_d = "d. help my child think of constructive things to do when	other children tease him/her (e.g., find other things to do)"
    @question10_e = "e. comfort him/her and play a game to take his/her mind off the upsetting event"
    @question10_f = "f. encourage him/her to talk about how it hurts to be teased"
    @question10_g = "g. give my child a look until he/she realizes that crying is not an appropriate behavior"
    @question10_h = "h. not get involved"

    @question11_a = "a. get angry/upset with my child"
    @question11_b = "b. tell my child that he/she will be sent to his/her room when we get home from the store"
    @question11_c = "c. tell my child that he/she is being immature and that the toy is silly"
    @question11_d = "d. distract my child by talking about a fun activity we could do later that day"
    @question11_e = "e. tell my child that he/she can use some of his/her allowance money for the toy"
    @question11_f = "f. tell my child that it is okay to have strong feelings when you don\'t get something you want"
    @question11_g = "g. ignore my child until he/she calms down"
    @question11_h = "h. give my child a firm look to indicate that s/he needs to stop now"

    @question12_a = "a. stay calm and not show my child that I am sad"
    @question12_b = "b. tell my child that is what happens when pets are not taken care of"
    @question12_c = "c. tell my child that the pet was old anyways so he/she should not be that sad"
    @question12_d = "d. distract my child by talking about a fun activity we can do together"
    @question12_e = "e. help my child in having a small funeral for the pet"
    @question12_f = "f. encourage my child to talk about his/her sad thoughts and feelings"
    @question12_g = "g. give her/him a look to indicate it is time to stop crying right now"
    @question12_h = "h. let my child finish crying and be around if he/she needs me"

    @question13_a = "a. become upset with my child"
    @question13_b = "b. tell my child that he/she will not be allowed to attend the next fun activity either"
    @question13_c = "c. tell my child he/she is overreacting and that the activity will not be much fun"
    @question13_d = "d. comfort my child and try to get him/her to think about doing something fun after tutoring."
    @question13_e = "e. help my child think of things he/she could do to have fun after tutoring"
    @question13_f = "f. encourage my child to talk about his/her anger"
    @question13_g = "g. not respond to my child\'s reaction and continue with the plan"
    @question13_h = "h. say nothing, but give my child a look to keep them in line"

    @question14_a = "a. not be annoyed with my child for being angry"
    @question14_b = "b. send my child to his/her room to calm down"
    @question14_c = "c. tell my child that he/she is overreacting and being a sore loser"
    @question14_d = "d. suggest that my child try doing something fun on his/her own"
    @question14_e = "e. help my child to practice the game so he/she will do better in the next game."
    @question14_f = "f. tell my child that sometimes people feel angry when they lose"
    @question14_g = "g. stare at my child until s/he apologizes or comes back to play the game politely"
    @question14_h = "h. ignore my child\'s outburst and continue playing"

    @question15_a = "a. distract my child by talking about all the fun he/she will have talking about what he/she has learned"
    @question15_b = "b. help my child think of things that he/she could do so that speaking in front of the class will not be as scary (e.g. look at his/her friends or read from a script)"
    @question15_c = "c. tell my child to quit over-reacting"
    @question15_d = "d. tell my child that if he/she doesn\'t stop that he/she will not get to play his/her favorite game after school"
    @question15_e = "e. feel upset and uncomfortable because of my child\'s reactions"
    @question15_f = "f. encourage my child to talk about his/her nervous feelings"
    @question15_g = "g. not address my child\'s anxiety"
    @question15_h = "h. give my child a firm look that expresses how I feel about their reaction"

    @question16_a = "a. become angry with my child"
    @question16_b = "b. tell my child that he/she cannot go anywhere until his/her homework is finished"
    @question16_c = "c. tell my child that getting angry isn\'t going to help get his/her homework done any faster"
    @question16_d = "d. comfort my child and try to get him/her to forget about his/her frustrations"
    @question16_e = "e. help my child to finish his/her homework"
    @question16_f = "f. tell my child it is okay to get angry and frustrated when things are challenging"
    @question16_g = "g. ignore my child\'s outburst"
    @question16_h = "h. give my child a firm look to put an end to their outburst"

    @answer1 = "1"
    @answer2 = "2"
    @answer3 = "3"
    @answer4 = "4"
    @answer5 = "5"
    @answer6 = "6"
    @answer7 = "7"

    @survey_name = "CCNES"
  end
  
  def create
    @pab = Pab.new(params[:pab])
    if @pab.save
      flash[:notice] = 'Thanks for Submitting the PAB Survey!'
      redirect_to surveys_path
    end
  end
end