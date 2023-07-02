import request from '@/utils/request'

// 查询线上答题列表
export function listDemo(query) {
  return request({
    url: '/sys/demo/list',
    method: 'get',
    params: query
  })
}

// 查询线上答题详细
export function getDemo(id) {
  return request({
    url: '/sys/demo/' + id,
    method: 'get'
  })
}

// 新增线上答题
export function addDemo(data) {
  return request({
    url: '/sys/demo',
    method: 'post',
    data: data
  })
}

// 修改线上答题
export function updateDemo(data) {
  return request({
    url: '/sys/demo',
    method: 'put',
    data: data
  })
}

// 删除线上答题
export function delDemo(id) {
  return request({
    url: '/sys/demo/' + id,
    method: 'delete'
  })
}
