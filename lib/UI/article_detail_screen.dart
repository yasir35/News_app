import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Models/categories_news_model.dart';

class ArticleDetailScreen extends StatelessWidget {
  final Articles article;

  const ArticleDetailScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(article.urlToImage!)),
            const SizedBox(height: 15),
            Text(
              article.title ?? "",
              style: GoogleFonts.poppins(
                  fontSize: 23,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  article.source!.name ?? "",
                  style: GoogleFonts.rowdies(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
                Text(
                  article.publishedAt ?? "",
                  style: GoogleFonts.rowdies(
                      fontSize: 11, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Text(
              article.content ?? "",
              style: GoogleFonts.cardo(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
