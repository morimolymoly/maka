pub fn convert_bytes2ucs2(string: &[u8]) -> [u16; 32] {
    let mut buf = [0u16; 32];
    for i in 0..string.len() {
        buf[i] = string[i] as u16;
    }
    buf
}
