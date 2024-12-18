import streamlit as st

def main():
    st.title("Aplicación de Entrada de Datos")

    # Sidebar widgets
    st.sidebar.header("Configuraciones")

    # Input Box (Edad) en la barra lateral
    edad = st.sidebar.number_input("Ingresa tu edad:", min_value=0, max_value=100, value=25)
    
    # Text Input (Nombres y Apellidos) en la barra lateral
    nombre = st.sidebar.text_input("Nombres y Apellidos:")
    
    # Slider (Seleccionar Mes) en la barra lateral
    mes = st.sidebar.slider("Selecciona un mes:", 1, 12, 1)
    
    # Main Page widgets
    st.subheader("Detalles Adicionales")

    # Checkbox (Acepta Términos) en la página principal
    acepta_terminos = st.checkbox("Acepta términos y condiciones")
    
    # Radio Buttons (Género) en la página principal
    genero = st.radio("Selecciona tu género:", ("Masculino", "Femenino", "Otro"))
    
    # Selectbox (Selecciona tu País) en la página principal
    pais = st.selectbox("Selecciona tu país:", ["Ecuador", "Perú", "Colombia", "Chile", "Argentina"])

    # File Uploader (Cargar Archivo) en la página principal
    archivo = st.file_uploader("Cargar un archivo", type=["csv", "txt", "xlsx"])
    
    # Date Input (Selecciona una Fecha) en la página principal
    fecha = st.date_input("Selecciona una fecha:")
    
    # Time Input (Selecciona una Hora) en la página principal
    hora = st.time_input("Selecciona una hora:")
    
    # Button (Enviar Información) en la página principal
    if st.button("Enviar Información"):
        st.write("Edad:", edad)
        st.write("Nombre:", nombre)
        st.write("Mes seleccionado:", mes)
        st.write("Acepta términos:", acepta_terminos)
        st.write("Género:", genero)
        st.write("País:", pais)
        st.write("Archivo cargado:", archivo)
        st.write("Fecha seleccionada:", fecha)
        st.write("Hora seleccionada:", hora)

if __name__ == "__main__":
    main()
