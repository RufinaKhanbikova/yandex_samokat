import order_request
import data

def test_get_order_data_success_response():
    create_order_response = order_request.post_new_order(data.order_body)
    assert create_order_response.status_code == 201

    track = create_order_response.json()["track"]
    get_order_response = order_request.get_order(track)
    assert get_order_response.status_code == 200

