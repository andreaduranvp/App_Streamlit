import streamlit as st

def main():
    st.title("Aplicación de Entrada de Datos")

    # Input Box (Edad)
    edad = st.number_input("Ingresa tu edad:", min_value=0, max_value=100, value=25)
    
    # Text Input (Nombres y Apellidos)
    nombre = st.text_input("Nombres y Apellidos:")
    
    # Slider (Seleccionar Mes)
    mes = st.slider("Selecciona un mes:", 1, 12, 1)
    
    # Checkbox (Acepta Términos)
    acepta_terminos = st.checkbox("Acepta términos y condiciones")
    
    # Radio Buttons (Género)
    genero = st.radio("Selecciona tu género:", ("Masculino", "Femenino", "Otro"))
    
    # Selectbox (Selecciona tu País)
    pais = st.selectbox("Selecciona tu país:", ["Ecuador", "Perú", "Colombia", "Chile", "Argentina"])
    
    # File Uploader (Cargar Archivo)
    archivo = st.file_uploader("Cargar un archivo", type=["csv", "txt", "xlsx"])
    
    # Date Input (Selecciona una Fecha)
    fecha = st.date_input("Selecciona una fecha:")
    
    # Time Input (Selecciona una Hora)
    hora = st.time_input("Selecciona una hora:")
    
    # Button (Enviar Información)
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
