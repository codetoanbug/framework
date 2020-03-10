#ifndef CODEBUGS_CLASSIC_H
#define CODEBUGS_CLASSIC_H
#include "codebugs.h"
#include <iostream>
#include <string>
namespace codebugs {
   class Classic : public Codebugs {
      std::string Title{};
      std::string Lessons[3]{};
      std::string Questions[3]{};
      std::string Answers[3]{};
   public:
      Classic() {
         std::cout << "Creating new classic object..." << std::endl;

         Title = "This is title";
         for (int i = 0; i < 3; i++) {
            Lessons[i] = "Lesson " + std::to_string(i+1);
            Questions[i] = "Question " + std::to_string(i+1);
            Answers[i] = "Answer " + std::to_string(i+1);
         }
         
         std::cout << "Done!" << std::endl;
      }
      void showTitleLessons() {
         std::cout << Title << std::endl;
      }

      void showLesson(int index) {
         std::cout << Lessons[index] << std::endl;
      }

      void showQuestion(int index) {
         std::cout << Questions[index] << std::endl;
      }

      void showAnswer(int index) {
         std::cout << Answers[index] << std::endl;
      }
   };
}
#endif // !CODEBUGS_CLASSIC_H
