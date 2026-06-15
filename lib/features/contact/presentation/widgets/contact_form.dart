import 'package:flutter/material.dart';
import '../../../../core/helpers/validators.dart';
import '../../../../core/widgets/glow_button.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _message = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _message.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('အောင်မြင်ပါသည် — message ပို့ရန် ပြင်ဆင်နေပါသည်။')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white12),
        color: Colors.white.withValues(alpha: 0.03),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Send a message',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 18),
            TextFormField(
              controller: _name,
              style: const TextStyle(color: Colors.white),
              decoration: _decoration('အမည်'),
              validator: (value) => Validators.requiredField(value, 'အမည် ထည့်ပါ။'),
            ),
            const SizedBox(height: 14),
            TextFormField(
              controller: _email,
              style: const TextStyle(color: Colors.white),
              decoration: _decoration('အီးမေးလ်'),
              validator: Validators.email,
            ),
            const SizedBox(height: 14),
            TextFormField(
              controller: _message,
              style: const TextStyle(color: Colors.white),
              maxLines: 6,
              decoration: _decoration('မက်ဆေ့ချ်'),
              validator: (value) => Validators.requiredField(value, 'မက်ဆေ့ချ် ထည့်ပါ။'),
            ),
            const SizedBox(height: 18),
            GlowButton(
              label: 'Send Message',
              icon: Icons.send_rounded,
              onPressed: _submit,
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _decoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: Colors.white54),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.white12),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.cyanAccent),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.redAccent),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.redAccent),
      ),
      filled: true,
      fillColor: Colors.black.withValues(alpha: 0.14),
    );
  }
}
