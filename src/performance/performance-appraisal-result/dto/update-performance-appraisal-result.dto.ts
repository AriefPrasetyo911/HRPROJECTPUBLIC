import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreatePerformanceAppraisalResultDto } from './create-performance-appraisal-result.dto';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class UpdatePerformanceAppraisalResultDto extends PartialType(CreatePerformanceAppraisalResultDto) {
    @ApiProperty()
    @IsNotEmpty()
    @IsString()
    employee_id: string;

    @ApiProperty()
    @IsNotEmpty()
    @IsString()
    answer_id: string;

    @ApiProperty()
    @IsNotEmpty()
    @IsString()
    question_category: string;

    @ApiProperty()
    @IsNotEmpty()
    @IsString()
    question_example: string;

    @ApiProperty()
    @IsNotEmpty()
    @IsString()
    status: string;

    @ApiProperty()
    @IsNotEmpty()
    @IsNumber()
    year: number;
}
