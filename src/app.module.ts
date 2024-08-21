import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './auth/auth.module';
import { PrismaService } from './prisma/prisma.service';
import { PrismaModule } from './prisma/prisma.module';
import { EmployeeModule } from './employee/employee.module';
import { PerformanceAppraisalModule } from './performance/performance-appraisal/performance-appraisal.module';
import { PerformanceAppraisalQuestionsModule } from './performance/performance-appraisal-questions/performance-appraisal-questions.module';
import { PerformanceAppraisalCategoryModule } from './performance/performance-appraisal-category/performance-appraisal-category.module';
import { PerformanceAppraisalExampleModule } from './performance/performance-appraisal-example/performance-appraisal-example.module';
import { ConfigModule } from '@nestjs/config';
import { PerformanceAppraisalYearModule } from './performance/performance-appraisal-year/performance-appraisal-year.module';
import { PerformanceAppraisalResultModule } from './performance/performance-appraisal-result/performance-appraisal-result.module';
import { SupervisorModule } from './supervisor/supervisor.module';
import { EmployeePhotoModule } from './employee-photo/employee-photo.module';
import { AccessControlModule } from 'nest-access-control';
import { roles } from './auth/roles/app.roles';
// import { AbilityModule } from './casl/ability/ability.module';

@Module({
  imports: [
    AccessControlModule.forRoles(roles),
    AuthModule, 
    PrismaModule, 
    ConfigModule.forRoot({ isGlobal: true }),
    EmployeeModule, 
    PerformanceAppraisalModule, 
    PerformanceAppraisalQuestionsModule, 
    PerformanceAppraisalCategoryModule, 
    PerformanceAppraisalExampleModule, 
    PerformanceAppraisalYearModule, 
    PerformanceAppraisalResultModule, 
    SupervisorModule, 
    EmployeePhotoModule
  ],
  controllers: [AppController],
  providers: [AppService, PrismaService],
})
export class AppModule {}
