use clap::Parser;
use mux::pane::PaneId;
use weenyterm_client::client::Client;

#[derive(Debug, Parser, Clone)]
pub struct KillPane {
    /// Specify the target pane.
    /// The default is to use the current pane based on the
    /// environment variable WEZTERM_PANE.
    #[arg(long)]
    pane_id: Option<PaneId>,
}

impl KillPane {
    pub async fn run(&self, client: Client) -> anyhow::Result<()> {
        let pane_id = client.resolve_pane_id(self.pane_id).await?;
        client.kill_pane(codec::KillPane { pane_id }).await?;
        Ok(())
    }
}