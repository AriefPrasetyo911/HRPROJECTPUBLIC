import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreatePerformanceAppraisalResultDto {
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
