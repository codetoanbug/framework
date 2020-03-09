#include "codebugs.h"
#include "classic.h"

int main() {

   codebugs::Classic a;
   std::cout << "------------------------------" << std::endl;
   a.showTitleLessons();
   for (int i = 0; i < 3; i++) {
      a.showLesson(i);
      a.showQuestion(i);
      a.showAnswer(i);
      std::cout << "------------------------------" << std::endl;
   }
   return 0;
}

