- vs-code snippets - https://github.com/r5n-dev/vscode-react-javascript-snippets/blob/HEAD/docs/Snippets.md

- docs - https://react.dev/learn

Class Component Lifecycle:
    - Mounting:
        - constructor(props): initiate component props, either thru props or static content
            - ex:
            constructor(props) {
                super(props);
                this.state = props;
            }

        - static getDerivedStateFromProps(state, props): before rendoring, this method is called to set the state from props
            - ex:
            static getDerivedStateFromProps(state, props) {
                return {favoritecolor: props.favcol }
            }
        
        - render()
            render() {
                return (
                    <>
                        <h1> Hi </h1>
                        <p> Hello </p>
                    </>
                )
            }

        - componentDidMount()

    - Updating:
        - If there is a update in states or props, component will be updated.

        - getDerivedStateFromProps()
        - shouldComponentUpdate() - true/false to update the component
        - render()
        - getSnapshotBeforeUpdate()
        - componentDidUpdate()

    - Unmounting:
        - componentWillUnmount() - Called when removed component from DOM

React props: 
    - props is nothing but properties
    - props receiving as HTML attributes and send them to components.
    Ex:
    - <NewComponent2 color='blue' model="2021" country="IND" state="KA" />
    - FunctionComponent.js 


Adding Events:
    - onClick, onChange, onMouseOver
    - events are written in curly braces
    - Ex:
        onClick ={ submitted}

Conditional Rendering:
    - Using
        - if statements
        - logical && operator
            ex:
                {cars.length > 0 &&
                    <h2>
                    You have {cars.length} cars in your garage.
                    </h2>
                } 
        - Ternary operator
            condition? trueCase: falseCase;


Form: refer LoginComponent
    - To turn off the default behaviour of any element, event.preventDefault()

Select: refer SelectComponent
    ex:
    <select> 
        <option> 1</option>
    </select>

React Router
    - Use BrowserRoute.Routes.Route.Route
    - Navigation is thru <Link to> </Link>

React Memo (https://www.w3schools.com/react/react_memo.asp)
    - It will help to avoid unwanted re-rendering of components.
    - ex: export default memo(Todos);


Styling React Using CSS:

    - Inline style: style value must be object and all the keys need to be in camelCase format.
        - <form style={{ backgroundColor: 'pink', color: 'black' }}>

    - CSS Stylesheet: Write CSS in a separate file and use it in the component.
        - Ex: App.css, imported in App.js
        - import './App.css';
    
    - CSS modules: Write CSS in a separate file ending with *.module.css file and import to a component, applicable for that component only.
        - import styles from './my-style.module.css'; 
        - return <h1 className={styles.bigblue}>Hello Car!</h1>;
    
    - SASS: https://www.w3schools.com/react/react_sass_styling.asp
        - We can use sass also

React Hooks
    - Allow functional components to have access to states and other react features. becausse of this, we do not need to use the class components
    - Rules:
        - Hooks can only be called inside React function components.
        - Hooks can only be called at the top level of a component.
        - Hooks cannot be conditional
        - Hooks will not work in React class components.

    - Ex:
        import {useState} from 'react'
        const [color, setColor] = useState()


    - useState(): Used to track the state in functional component
        import {useState} from 'react'
        const [color, setColor] = useState()
        
        - we can use {color}
        - to set the color, setColor(newColor)
        - to set the object, setObject((oldObject) => ...oldObject, {key: newValue})

    - useEffect()
        - its used to do side effect tasks of components.
        - it performs side effects.
        - ex: fetching data, timers, directly updating DOM
        - useEffect(<function>, [dependencies])
        - dependency is optional parameter.
        - Ex-1:
            This will execute after every render as dependency is not there.
             useEffect(() => {
                setTimeout(() => {
                setCount((count) => count + 1);
                }, 1000);
            });
            

        - Ex-2:
            Execute only once after first render as we are passing dependency as empty array.
            useEffect(() => {
                setTimeout(() => {
                setCount((count) => count + 1);
                }, 1000);
            }, []);

        - Ex-3:
            useEffect(() => {
            //Runs on the first render
            //And any time any dependency value changes
            }, [prop, state]);

        - Ex-4: effect cleanup to avoid memory leak.
            useEffect(() => {
                let timer = setTimeout(() => {
                setCount((count) => count + 1);
            }, 1000);

            return () => clearTimeout(timer)
            }, []);

    - useContext(): Manage state globally, we can avoid prop drilling by passing props as a state for nested components.

        - First we need to create context.
            import {createContext} from 'react';
            - const UserContext = createContext(); 

        - Then we need to provide data to a component, so that it will be available to all tree components
            function Component1() {
                const [user, setUser] = useState("Jesse Hall");

                return (
                    <UserContext.Provider value={user}>
                    <h1>{`Hello ${user}!`}</h1>
                    <Component2 />
                    </UserContext.Provider>
                );
            }

        - Then we can fetch the state from context in Component5
            import {useContext} from 'react';
            function Component5() {
                const user = useContext(UserContext);

                return (
                    <>
                    <h1>Component 5</h1>
                    <h2>{`Hello ${user} again!`}</h2>
                    </>
                );
            }

    - useRef(): 
        - used to store mutable data which do not cause the re-rendering.
        - allows you to persist values between renders.
        - 
        ex:
        function App() {
            const [inputValue, setInputValue] = useState("");
            const count = useRef(0);

            useEffect(() => {
                count.current = count.current + 1;
            });

            return (
                <>
                <input
                    type="text"
                    value={inputValue}
                    onChange={(e) => setInputValue(e.target.value)}
                />
                <h1>Render Count: {count.current}</h1>
                </>
            );
        }

    - useReducer(): When properties are more than 3, replacing state with reducer.
        - this has initial state and reducer function which will take state and action as params.
        - Refer ReducerComponent.js



Component childrens:
    - All childrens within curly braces goes as unique prop name 'children'.
    - refer: ChildrenComponent.js

React APIs (Manipulating children dynamically)
    - React.cloneElement(element, [props])
    - React.children.map(children, (child, index))

