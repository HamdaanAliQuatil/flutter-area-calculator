import { StringNullableFilter } from "../../util/StringNullableFilter";
import { DateTimeFilter } from "../../util/DateTimeFilter";
import { StringFilter } from "../../util/StringFilter";

export type TaskWhereInput = {
  description?: StringNullableFilter;
  dueDate?: DateTimeFilter;
  id?: StringFilter;
  status?: "Option1";
  title?: StringNullableFilter;
};
