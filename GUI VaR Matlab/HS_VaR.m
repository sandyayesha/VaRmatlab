function varargout = HS_VaR(varargin)
% HS_VAR MATLAB code for HS_VaR.fig
%      HS_VAR, by itself, creates a new HS_VAR or raises the existing
%      singleton*.
%
%      H = HS_VAR returns the handle to a new HS_VAR or the handle to
%      the existing singleton*.
%
%      HS_VAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HS_VAR.M with the given input arguments.
%
%      HS_VAR('Property','Value',...) creates a new HS_VAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HS_VaR_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HS_VaR_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HS_VaR

% Last Modified by GUIDE v2.5 09-Oct-2022 11:58:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HS_VaR_OpeningFcn, ...
                   'gui_OutputFcn',  @HS_VaR_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before HS_VaR is made visible.
function HS_VaR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HS_VaR (see VARARGIN)

% Choose default command line output for HS_VaR
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes HS_VaR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HS_VaR_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_VaR_Callback(hObject, eventdata, handles)
% hObject    handle to edit_VaR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_VaR as text
%        str2double(get(hObject,'String')) returns contents of edit_VaR as a double


% --- Executes during object creation, after setting all properties.
function edit_VaR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_VaR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_VaR_Rp_Callback(hObject, eventdata, handles)
% hObject    handle to edit_VaR_Rp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_VaR_Rp as text
%        str2double(get(hObject,'String')) returns contents of edit_VaR_Rp as a double


% --- Executes during object creation, after setting all properties.
function edit_VaR_Rp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_VaR_Rp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_browse.
function pushbutton_browse_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,filepath]=uigetfile({'*.*';'*.xlsx'},'Masukkan File Data yang ingin dianalisis');

file=[filename];
nama_file=[filepath filename];
data=xlsread(nama_file);
setappdata(0,'data',data);
set(handles.pushbutton_browse,'String',file);



% --- Executes during object creation, after setting all properties.
function pushbutton_browse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton_browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit_hp_Callback(hObject, eventdata, handles)
% hObject    handle to edit_hp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_hp as text
%        str2double(get(hObject,'String')) returns contents of edit_hp as a double


% --- Executes during object creation, after setting all properties.
function edit_hp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_hp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_alfa_Callback(hObject, eventdata, handles)
% hObject    handle to edit_alfa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue=get(handles.edit_alfa,'String');
sliderValue=str2num(sliderValue);
if(isempty(sliderValue) || sliderValue<0 || sliderValue>1)
    set(handles.slider1,'Value',0);
    set(handles.edit_alfa,'String',0);
else
    set(handles.slider1,'Value',sliderValue);
end

% Hints: get(hObject,'String') returns contents of edit_alfa as text
%        str2double(get(hObject,'String')) returns contents of edit_alfa as a double


% --- Executes during object creation, after setting all properties.
function edit_alfa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_alfa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_inves_awal_Callback(hObject, eventdata, handles)
% hObject    handle to edit_inves_awal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_inves_awal as text
%        str2double(get(hObject,'String')) returns contents of edit_inves_awal as a double


% --- Executes during object creation, after setting all properties.
function edit_inves_awal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_inves_awal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_jalankan.
function pushbutton_jalankan_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_jalankan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=getappdata(0,'data');
hp=str2num(get(handles.edit_hp,'String'));
alfa=str2num(get(handles.edit_alfa,'String'));
S0=str2num(get(handles.edit_inves_awal,'String'));
return_saham=[];
for i=2:length(x)
    return_saham_i=log(x(i))-log(x(i-1));
    return_saham=[return_saham,return_saham_i];
end
%HS_VaR
return_saham_sort=sort(return_saham);
persentil_alfa=ceil(alfa*length(return_saham_sort));
hsVaR=-sqrt(hp)*return_saham_sort(persentil_alfa)*100;
S0=hsVaR*S0/100;
set(handles.edit_VaR,'string',hsVaR);
set(handles.edit_VaR_Rp,'string',S0);



% --- Executes on button press in pushbutton_reset.
function pushbutton_reset_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit_hp,'string','');
set(handles.edit_alfa,'string','');
set(handles.edit_inves_awal,'string','');
setappdata(0,'data',0);
set(handles.pushbutton_browse,'String','Cari File');
set(handles.edit_KS,'string','');
set(handles.edit_pvalue,'string','');
set(handles.edit_VaR,'string','');
set(handles.edit_VaR_Rp,'string','');
set(handles.edit_kesimpulan,'string','');


% --- Executes on button press in pushbutton_home.
function pushbutton_home_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Home;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue=get(handles.slider1,'Value');
set(handles.edit_alfa,'String',num2str(sliderValue));
guidata(hObject,handles);


% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
