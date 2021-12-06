require './lib/menu'

RSpec.describe Menu do
  describe '#print_actions' do
    msg = "\t\tValera actions\n\t\t[1] - Go work\n\t\t[2] - See nature\n\t\t[3] - See serial\n\t\t[4] - Go to bar
\t\t[5] - Drink with marginals\n\t\t[6] - Sing\n\t\t[7] - Sleep\n\t\t[8] - Save\n\t\t[9] - Load\n\t\t[0] - Exit\n
Your action: "
    it 'Output menu' do
      expect do
        Menu.new.print_actions
      end.to output(msg).to_stdout
    end
  end
end
