import '../../utils/module/module.dart';

class DesignSystemTypography extends StatelessWidget {
  const DesignSystemTypography({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme;
        // .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    List<Widget> children = [
      TextStyleExample(name: "Display Large", style: textTheme.displayLarge!),
      TextStyleExample(name: "Display medium", style: textTheme.displayMedium!),
      TextStyleExample(name: "Display small", style: textTheme.displaySmall!),
      TextStyleExample(name: "Headline Large", style: textTheme.headlineLarge!),
      TextStyleExample(
          name: "Headline medium", style: textTheme.headlineMedium!),
      TextStyleExample(name: "Headline small", style: textTheme.headlineSmall!),
      TextStyleExample(name: "Title Large", style: textTheme.titleLarge!),
      TextStyleExample(name: "Title medium", style: textTheme.titleMedium!),
      TextStyleExample(name: "Title small", style: textTheme.titleSmall!),
      TextStyleExample(name: "Label Large", style: textTheme.labelLarge!),
      TextStyleExample(name: "Label medium", style: textTheme.labelMedium!),
      TextStyleExample(name: "Label small", style: textTheme.labelSmall!),
      TextStyleExample(name: "Body Large", style: textTheme.bodyLarge!),
      TextStyleExample(name: "Body medium", style: textTheme.bodyMedium!),
      TextStyleExample(name: "Body small", style: textTheme.bodySmall!),
    ];

    return ListView(
      children: children,
    );
  }
}

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({super.key, required this.name, required this.style});

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(name, style: style),
    );
  }
}
