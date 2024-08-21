import { Injectable } from '@nestjs/common';
import { CreatePerformanceAppraisalResultDto } from './dto/create-performance-appraisal-result.dto';
import { UpdatePerformanceAppraisalResultDto } from './dto/update-performance-appraisal-result.dto';
import { PrismaService } from 'src/prisma/prisma.service';
import { EmployeeService } from 'src/employee/employee.service';

@Injectable()
export class PerformanceAppraisalResultService {
  employeeIdArray = [];
  employeeDataArray = [];
  finalEmployeeDataArray = [];
  data: any;

  constructor(private dbService: PrismaService, private employeeService: EmployeeService) { }
  
  create(createPerformanceAppraisalResultDto: CreatePerformanceAppraisalResultDto) {
    return 'This action adds a new performanceAppraisalResult';
  }

  async findAll() {
    return 'This action returns all performanceAppraisalResults';
  }

  async findOne(id: string) {
    return this.dbService.performance_appraisal_result.findFirst({
      where: {
        employee_id: id
      }
    });

    // let resultData = this.dbService.$queryRaw
    // `SELECT employee_data.id, Performance_appraisal_result.employee_id 
    // FROM employee_data
    // INNER JOIN Performance_appraisal_result
    // ON employee_data.id = Performance_appraisal_result.employee_id
    // WHERE Performance_appraisal_result.employee_id = ${id}`;

    // return resultData;

    return id
  }

  update(id: number, updatePerformanceAppraisalResultDto: UpdatePerformanceAppraisalResultDto) {
    return `This action updates a #${id} performanceAppraisalResult`;
  }

  remove(id: number) {
    return `This action removes a #${id} performanceAppraisalResult`;
  }
}
