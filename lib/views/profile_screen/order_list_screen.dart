import 'package:flutter/material.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/product_details_screen/widgets/widget_image.dart';
import 'package:theme1/views/widgets/common/gap_widget.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({Key? key}) : super(key: key);

  @override
  _OrderListScreenState createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen>
    with TickerProviderStateMixin {
  final List<Map<String, dynamic>> orders = [
    {
      "orderNumber": "ORD123456",
      "date": "Feb 25, 2024",
      "totalAmount": 120.0,
      "status": "Delivered",
      "image":
          "https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJlZXxlbnwwfHwwfHx8MA%3D%3D", // Placeholder image URL
    },
    {
      "orderNumber": "ORD123457",
      "date": "Feb 24, 2024",
      "totalAmount": 90.0,
      "status": "Processing",
      "image":
          "https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJlZXxlbnwwfHwwfHx8MA%3D%3D", // Placeholder image URL
    },
    {
      "orderNumber": "ORD123458",
      "date": "Feb 22, 2024",
      "totalAmount": 150.0,
      "status": "Cancelled",
      "image":
          "https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJlZXxlbnwwfHwwfHx8MA%3D%3D", // Placeholder image URL
    },
    {
      "orderNumber": "ORD123456",
      "date": "Feb 25, 2024",
      "totalAmount": 120.0,
      "status": "Delivered",
      "image":
          "https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJlZXxlbnwwfHwwfHx8MA%3D%3D", // Placeholder image URL
    },
    {
      "orderNumber": "ORD123457",
      "date": "Feb 24, 2024",
      "totalAmount": 90.0,
      "status": "Processing",
      "image":
          "https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJlZXxlbnwwfHwwfHx8MA%3D%3D", // Placeholder image URL
    },
    {
      "orderNumber": "ORD123458",
      "date": "Feb 22, 2024",
      "totalAmount": 150.0,
      "status": "Cancelled",
      "image":
          "https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJlZXxlbnwwfHwwfHx8MA%3D%3D", // Placeholder image URL
    },
  ];

  String filterValue = 'All';

  List<Map<String, dynamic>> getFilteredOrders() {
    if (filterValue == 'All') {
      return orders;
    } else {
      return orders.where((order) => order['status'] == filterValue).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order List',
        ),
        actions: [
          PopupMenuButton(
            onSelected: (String value) {
              setState(() {
                filterValue = value;
              });
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 'All',
                child: Text(
                  'All',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.MenuItemListTitle, context)
                  
                ),
              ),
              PopupMenuItem(
                value: 'Delivered',
                child: Text(
                  'Delivered',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.MenuItemListTitle, context)
                  
                ),
              ),
              PopupMenuItem(
                value: 'Processing',
                child: Text(
                  'Processing',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.MenuItemListTitle, context)
                  
                ),
              ),
              PopupMenuItem(
                value: 'Cancelled',
                child: Text(
                  'Cancelled',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.MenuItemListTitle, context)
                  
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: getFilteredOrders().length,
        itemBuilder: (context, index) {
          final order = getFilteredOrders()[index];
          return Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            // color: AppTheme.backgroundColor,
            child: ListTile(
              leading: 
              /*
              Expanded(
                  flex: 1,
                  child: Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: WidgetImage(order["image"]))),
                      */
          //  /* 
             Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(order["image"]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // */
              title: Text(
                'Order Number: ${order["orderNumber"]}',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.OrderListCardOrderNumber, context)
                // style: TextStyle(
                //     fontSize: 18,
                //     fontWeight: FontWeight.bold,
                //     ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GapWidget(size: -10,),
                  Text(
                    'Date: ${order["date"]}',
                    // style: TextStyle(fontSize: 16, ),
                                style: CustomTextTheme.getTextStyle(MyTextStyle.OrderListCardDate, context)
                  ),
                  GapWidget(size: -10,),
                  Text(
                    'Total Amount: \$${order["totalAmount"]}',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.OrderListCardTotalAmount, context)
                    // style: TextStyle(fontSize: 16, ),
                  ),
                  GapWidget(size: -10,),
                  Text(
                    'Status: ${order["status"]}',
                    
                                style: CustomTextTheme.getTextStyle(MyTextStyle.OrderListCardStatus, context)
                    // style: TextStyle(
                    //   fontSize: 16,
                    //   color: _getStatusColor(order["status"]),
                    //   fontWeight: FontWeight.bold,
                    // ),
                  ),
                  GapWidget(size: -10,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Delivered':
        return Colors.green;
      case 'Processing':
        return Colors.blue;
      case 'Cancelled':
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
