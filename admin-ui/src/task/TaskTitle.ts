import { Task as TTask } from "../api/task/Task";

export const TASK_TITLE_FIELD = "title";

export const TaskTitle = (record: TTask): string => {
  return record.title || String(record.id);
};
