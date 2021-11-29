import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('.task-grid');
  Sortable.create(list);
};

export { initSortable };
