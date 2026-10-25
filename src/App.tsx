import { formatearPrecio } from './utils/formato'

function App() {
  return (
    <div className="min-h-screen flex flex-col items-center justify-center gap-2 bg-green-50">
      <h1 className="text-4xl font-bold text-green-700">Food4U 🥗</h1>
      <p className="text-lg text-gray-700">Ensalada César: {formatearPrecio(5990)}</p>
    </div>
  )
}

export default App