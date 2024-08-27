import React, { useEffect, useRef } from "react";

export interface ComponentProps {
  data: Array<{ foo: "BAR" }>;
}

export function Component(props: ComponentProps) {
  const boxRef = useRef<HTMLDivElement | null>(null);

  return (
    <div ref={boxRef}>
      <h1>{props.data}</h1>
    </div>
  );
}
function DatePick(props: any, ref: React.ForwardedRef<HTMLDivElement>) {
  const [value, setValue] = useEffect<string>("");

  return (
    <div>
      <input
        ref={ref}
        value={value}
        onChange={({ target }) => setValue(target.value)}
      />
    </div>
  );
}

export default React.forwardRef(DatePick);
