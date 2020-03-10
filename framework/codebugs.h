#ifndef CODEBUGS_CODEBUGS_H
#define CODEBUGS_CODEBUGS_H
namespace codebugs {
   class Codebugs {
   public:
      virtual void showTitleLessons() = 0;
      virtual void showLesson(int) = 0;
      virtual void showQuestion(int) = 0;
      virtual void showAnswer(int) = 0;
      virtual void initDb(const char*) = 0;
   };
}
#endif // !CODEBUGS_CODEBUGS_H

