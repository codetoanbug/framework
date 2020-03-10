#include "classic.h"
#include "SQLManager.h"

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
   codebugs::SQLManager::initDb("codetoanbug.db");
   return 0;
}

