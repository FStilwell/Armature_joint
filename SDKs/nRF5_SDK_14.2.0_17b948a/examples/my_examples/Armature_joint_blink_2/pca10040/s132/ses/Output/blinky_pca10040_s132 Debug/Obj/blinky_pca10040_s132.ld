MEMORY
{
  UNPLACED_SECTIONS (wx) : ORIGIN = 0x100000000, LENGTH = 0
  RAM (wx) : ORIGIN = 0x20000000, LENGTH = 0x00010000
  FLASH (wx) : ORIGIN = 0x00000000, LENGTH = 0x00080000
}

SECTIONS
{
  __RAM_segment_start__ = 0x20000000;
  __RAM_segment_end__ = 0x20010000;
  __RAM_segment_size__ = 0x00010000;
  __FLASH_segment_start__ = 0x00000000;
  __FLASH_segment_end__ = 0x00080000;
  __FLASH_segment_size__ = 0x00080000;

  __HEAPSIZE__ = 512;
  __STACKSIZE_PROCESS__ = 0;
  __STACKSIZE__ = 0x800;

}

