export type TaskCreateInput = {
  description?: string | null;
  dueDate: Date;
  status?: "Option1" | null;
  title?: string | null;
};
