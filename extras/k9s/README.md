# k9s luna Theme

1. Copy `luna.yaml` to your k9s skins directory:

   ```sh
   mkdir -p $HOME/.config/k9s/skins
   cp luna.yaml $HOME/.config/k9s/skins/luna.yaml
   ```

2. Activate the skin by either:
   - Launching k9s with `k9s --skin luna`, or
   - Adding `ui.skin: luna` to your k9s `config.yaml`
3. Restart k9s to apply the change.
