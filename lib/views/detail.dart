import 'package:flutter/material.dart';

import '../models/car.dart';

class CarDetailPage extends StatelessWidget {
  final Car car;

  const CarDetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFE),
      appBar: AppBar(
        
        backgroundColor: const Color(0xFF2E7D32),
        // automaticallyImplyLeading: false, // Menghilangkan tombol kembali default di AppBar atas (Modul 4)
        title: Text(
          car.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Hewan (BoxFit.contain agar gambar utuh dan tidak terpotong)
            Container(
              width: double.infinity,
              height: 280,
              color: Colors.black,
              child: Center(
                child: Image.network(
                  car.imageUrl,
                  fit: BoxFit.contain,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      height: 280,
                      width: double.infinity,
                      color: Colors.black87,
                      child: const Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 280,
                      width: double.infinity,
                      color: Colors.black87,
                      child: const Icon(
                        Icons.broken_image,
                        size: 60,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul Car Details
                  const Text(
                    'Car Details:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Detail Height
                  _buildDetailRow('name', car.name),
                  const SizedBox(height: 6),

                  // Detail Weight
                  _buildDetailRow('brand', car.brand),
                  const SizedBox(height: 6),

                  _buildDetailRow('year', '${car.year}'),
                  const SizedBox(height: 6),

                  _buildDetailRow('price', '${car.price}'),
                  const SizedBox(height: 6),

                  _buildDetailRow('description', car.description),
                  const SizedBox(height: 6),

                  // Detail Type
                  // _buildDetailRow('Type', car.type),
                  // const SizedBox(height: 6),

                  // // Detail Habitat
                  // _buildDetailRow('Habitat', car.habitat.join(', ')),

                  const SizedBox(height: 24),

                  // Judul car Activities
                  // const Text(
                  //   'C Activites:',
                  //   style: TextStyle(
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.black87,
                  //   ),
                  // ),
                  // const SizedBox(height: 12),

                  // List Badge Activities
                  // Wrap(
                  //   spacing: 10,
                  //   runSpacing: 10,
                  //   children: car.activities.map((activity) {
                  //     return Container(
                  //       padding: const EdgeInsets.symmetric(
                  //         horizontal: 16,
                  //         vertical: 8,
                  //       ),
                  //       decoration: BoxDecoration(
                  //         color: const Color(0xFFE8F5E9),
                  //         border: Border.all(color: const Color(0xFFC8E6C9)),
                  //         borderRadius: BorderRadius.circular(8),
                  //         boxShadow: const [
                  //           BoxShadow(
                  //             color: Colors.black12,
                  //             blurRadius: 3,
                  //             offset: Offset(0, 1),
                  //           ),
                  //         ],
                  //       ),
                  //       child: Text(
                  //         activity,
                  //         style: const TextStyle(
                  //           fontSize: 13,
                  //           color: Color(0xFF2E7D32),
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //     );
                  //   }).toList(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildDetailRow(String label, String value) {
    return Text(
      '$label : $value',
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey.shade700,
        height: 1.4,
      ),
    );
  }
}
