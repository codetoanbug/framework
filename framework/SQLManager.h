#ifndef CODEBUGS_SQLMANAGER_H
#define CODEBUGS_SQLMANAGER_H
#include <iostream>
#include <sqlite3.h>
#include "codebugs.h"
namespace codebugs {
   class SQLManager {
      SQLManager() {};
   public:
      SQLManager(const SQLManager&) = delete;
      static int initDb(const char* filename) {
         sqlite3* db;
         int exit = 0;
         exit = sqlite3_open(filename, &db);
         if (exit) {
            std::cerr << "Error open database" << sqlite3_errmsg(db) << std::endl;
            return -1;
         }

         else
            std::cout << "Database opened successfully!" << std::endl;
         return 0;
      }

   };
}
#endif // !CODEBUGS_SQLMANAGER_H
