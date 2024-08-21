import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { PerformanceAppraisalResultService } from './performance-appraisal-result.service';
import { CreatePerformanceAppraisalResultDto } from './dto/create-performance-appraisal-result.dto';
import { UpdatePerformanceAppraisalResultDto } from './dto/update-performance-appraisal-result.dto';

@Controller('performance-appraisal-result')
export class PerformanceAppraisalResultController {
  constructor(private readonly performanceAppraisalResultService: PerformanceAppraisalResultService) {}

  // @Post()
  // create(@Body() createPerformanceAppraisalResultDto: CreatePerformanceAppraisalResultDto) {
  //   return this.performanceAppraisalResultService.create(createPerformanceAppraisalResultDto);
  // }

  // @Get()
  // findAll() {
  //   return this.performanceAppraisalResultService.findAll();
  // }

  @Get(':id')
  async findOne(@Param('id') id: string) {
    return await this.performanceAppraisalResultService.findOne(id);
  }

  // @Patch(':id')
  // update(@Param('id') id: string, @Body() updatePerformanceAppraisalResultDto: UpdatePerformanceAppraisalResultDto) {
  //   return this.performanceAppraisalResultService.update(+id, updatePerformanceAppraisalResultDto);
  // }

  // @Delete(':id')
  // remove(@Param('id') id: string) {
  //   return this.performanceAppraisalResultService.remove(+id);
  // }
}
