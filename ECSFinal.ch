//ESCFinal.ch
//A choose your own adventure story.
//Variable Declaration
string_t roadmapans;
string_t introans;
string_t journeyans;
string_t cname;
string_t vname;
int a = 3;
int b = 5;
//Roadmap
void roadmap(){
    printf("Welcome to this Choose Your Own Adventure Story.\n");
    sleep(a);
    printf("When typing answers, please start all words with capital letters.\n");
    sleep(a);
    printf("Would You like to see a roadmap that shows all of the possible options in the story?\n");
    printf("Yes or No.\n");
    do{
        scanf("%s", &roadmapans);
        if(roadmapans != "Yes" && roadmapans != "No"){
            printf("Invalid answer. Please try again.\n");
        }
    }
        while(roadmapans != "Yes" && roadmapans != "No");
    if(roadmapans=="Yes"){
        printf("                                                       Introdction\n");
        printf("                   __________________________________________|___________________________________________\n");
        printf("                   |                                         |                                          |\n");
        printf("              Mountains                                    Swamp                                     Desert\n");
        printf("     ______________|_______________           _______________|_______________            _______________|_______________\n");
        printf("     |             |              |           |              |              |            |              |              |\n");
        printf("   Reach         Swing         Let Go       Escape          Fight         Fight       Continue         Move          Set Up\n");
        printf(" for Ledge      To Ledge      Of Ledge    From Beast     With Fists     With Sword     Walking        Faster         Shelter\n");
        printf("                   |                                         |                                          |\n");
        printf("                   |                                         |                                          |\n");
        printf("              Fight Dragon                              Fight Dragon                               Fight Dragon\n\n\n");
        sleep(b);
    }
}
//Introduction
void intro(){
    printf("Please type a name for your character.\n");
    scanf("%s", &cname);
    printf("Please type a name for the villan of the story.\n");
    scanf("%s", &vname);
    printf("Narrorator: It is the Middle Ages.\nYou are a brave knight traveling from village to village in search of jobs.\nOne day you a king requests to meet with you.\n\n");
    sleep(a);
    printf("King: You must be the one they call %s.\n", cname);
    sleep(a);
    printf("I called you here because I need your help.\n");
    sleep(a);
    printf("I need you to slay the dragon named %s, which has been terrorizing this kingdom for months.\n\n\n", vname);
    sleep(a);
}
//First Choice
void choice1(){
    printf("Narrorator:You accept the task and your journey now begins.\nYou leave the kingdom and soon come across a fork in the road.\nThere are three routes you can take.\n");
    sleep(a);
    //Option One
    printf("Route One - Climb the trecherous mountains, which have peaks so high that nothing lives there.\n");
    sleep(a);
    //Option Two
    printf("Route Two - Go through a swamp filled with some of the most dangerous creatures know to man.\n");
    sleep(a);
    //Option Three
    printf("Route Three - Cross a desert, which has scorhing sands and strong winds.\n");
    sleep(a);
    printf("Which route do you choose?\n");
}
//First Choice Result
void journey(){
    if(introans=="Route One"){
        printf("Narrorator: You continue on your journey climbing the mountains, never knowing if the ground beneath you is stable.\n");
    }
    if(introans=="Route Two"){
        printf("Narrorator: You continue on your journey through the swamp, constantly alert of what might be lurking under the waters.\n");
    }
    if(introans=="Route Three"){
        printf("Narrorator: You continue on your journey across the desert, growing more tired with each and every step.\n");
    }
}
//Second Choice
void choice2(){
    if(introans=="Route One"){
        printf("As you are climbing the mountains, you suddenly loose grip of your hand.");
        printf("You are now hanging on to the mountain by one hand.\n");
        printf("What is your next move?\n");
        sleep(a);
        //End 1 Choice
        printf("Option One - Attempt to grab on to the ledge with your other hand.\n");
        sleep(a);
        //End 2 Choice
        printf("Option Two - Try to swing onto the ledge bellow you.\n");
        sleep(a);
        //End 3 Choice
        printf("Option Three - Let go of the ledge and hope you survive the fall.\n");
    }
    if(introans=="Route Two"){
        printf("As you are going through the swamp, you are suddenly attacked by a large, scaly beast.\n");
        printf("It has your arm in its mouth and it is now trying to bring you under the water.\n");
        printf("What is your next move?\n");
        sleep(a);
        //End 4 Choice
        printf("Option One - Attempt to pry the beast's jaws open and free yourself.\n");
        sleep(a);
        //End 5 Choice
        printf("Option Two - Try to fight the beast with your bare fists.\n");
        sleep(a);
        //End 6 Choice
        printf("Option Three - Reach for your sword and attempt to slay the beast.\n");
    }
    if(introans=="Route Three"){
        printf("As you are going across the desert, you spot a massive sandstorm headed directly a you.\n");
        printf("What is your next move?\n");
        sleep(a);
        //End 7 Choice
        printf("Option One - Ignore the sandstorm and continue at the same pace.\n");
        sleep(a);
        //End 8 Choice
        printf("Option Two - Move faster and try to exit the desert before the sandstorm hits.\n");
        sleep(a);
        //End 9 Choice
        printf("Option Three - Set up a temporary shelter with the supplies you brought.\n");
    }
}
//Second Choice Result
void challange(){
    //End 1 Result
    if(introans=="Route One" && journeyans=="Option One"){
        printf("As you reach with your other hand, the ledge cracks and breaks, causing you to fall to your death.\n");
    }
    //End 2 Result Part One
    if(introans=="Route One" && journeyans=="Option Two"){
        printf("You swing to the ledge and manage to barley grab hold.\nYou pull yourself up and continue up the mountain.\n");
    }
    //End 3 Result
    if(introans=="Route One" && journeyans=="Option Three"){
        printf("You let go and start to tumble down the mountain.\nYou feel sharp pains with each crash, as you fall to your death.\n");
    }
    //End 4 Result
    if(introans=="Route Two" && journeyans=="Option One"){
        printf("You try to pry open its jaws, but the beast bites down harder.\nIt takes you under the water, where you meet your demise.\n");
    }
    //End 5 Result Part One
    if(introans=="Route Two" && journeyans=="Option Two"){
        printf("You swing at the beast and your fist connects with its eye.\nThe beast lets go of your arm and darts away.\n");
    }
    //End 6 Result
    if(introans=="Route Two" && journeyans=="Option Three"){
        printf("As you reach for your sword, the beast bites down on your arm even harder and takes you under the water to your demise.\n");
    }
    //End 7 Result
    if(introans=="Route Three" && journeyans=="Option One"){
        printf("You continue at the same pace and the sandstorm soon catches up to you.\nThe sandstorm was too much and you are never seen again.\n");
    }
    //End 8 Result Part One
    if(introans=="Route Three" && journeyans=="Option Two"){
        printf("You increase your pace and manage to exit the desert before the sandstorm arrives.\n");
    }
    //End 9 Result
    if(introans=="Route Three" && journeyans=="Option Three"){
        printf("You set up a small tent with the supplies that you brought.\nThe sandstorm arives and your tent is taken down.\nThe sandstorm is too much and you are never seen again.\n");
    }
}
//Ending Dialogue
void end(){
    //End 2, End 5, and End 8 Result Part 2
    if(journeyans=="Option Two"){
        sleep(a);
        printf("You continue on your journey and soon arrive at the dragon's lair.\n");
        sleep(a);
        printf("You enter the cave and see the dragon before you.\n");
        sleep(a);
        printf("After a grueling fight, you manage to slay the dragon know as %s.\n", vname);
        sleep(a);
        printf("You return to the village and recieve riches and glory.\n");
        sleep(a);
        printf("The name %s will now be forever known.\n", cname);
    }
}
int main(){
    roadmap();
    intro();
    choice1();
    do{
        scanf("%s", &introans);
        if(introans!="Route One" && introans!="Route Two" && introans!="Route Three"){
            printf("Invalid answer. Please try again.\n");
        }
    }
    while(introans!="Route One" && introans!="Route Two" && introans!="Route Three");
    journey();
    choice2();
    do{
        scanf("%s", &journeyans);
        if(journeyans!="Option One" && journeyans!="Option Two" && journeyans!="Option Three"){
            printf("Invalid answer. Please try again.\n");
        }
    }
    while(journeyans!="Option One" && journeyans!="Option Two" && journeyans!="Option Three");
    challange();
    end();
}
