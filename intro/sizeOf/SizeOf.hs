import Foreign.Storable (sizeOf)
import Data.Int
import Data.Word

main = do
  putStrLn $ "sizeOf Char   = " ++ show (sizeOf (undefined :: Char))
  putStrLn $ "sizeOf Bool   = " ++ show (sizeOf (undefined :: Bool))
  putStrLn $ "sizeOf Int    = " ++ show (sizeOf (undefined :: Int))
  putStrLn $ "sizeOf Int32  = " ++ show (sizeOf (undefined :: Int32))
  putStrLn $ "sizeOf Float  = " ++ show (sizeOf (undefined :: Float))
  putStrLn $ "sizeOf Double = " ++ show (sizeOf (undefined :: Double))
  putStrLn $ "sizeOf Word   = " ++ show (sizeOf (undefined :: Word))

