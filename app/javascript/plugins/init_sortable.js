import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('.task-grid');
  if (list) {
    Sortable.create(list);
    console.log(Sortable.create(list))
  };
};

export { initSortable };
