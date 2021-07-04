function varargout = olimpiade(varargin)
% OLIMPIADE MATLAB code for olimpiade.fig
%      OLIMPIADE, by itself, creates a new OLIMPIADE or raises the existing
%      singleton*.
%
%      H = OLIMPIADE returns the handle to a new OLIMPIADE or the handle to
%      the existing singleton*.
%
%      OLIMPIADE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OLIMPIADE.M with the given input arguments.
%
%      OLIMPIADE('Property','Value',...) creates a new OLIMPIADE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before olimpiade_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to olimpiade_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help olimpiade

% Last Modified by GUIDE v2.5 02-Jul-2021 22:11:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @olimpiade_OpeningFcn, ...
                   'gui_OutputFcn',  @olimpiade_OutputFcn, ...
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


% --- Executes just before olimpiade is made visible.
function olimpiade_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to olimpiade (see VARARGIN)

% Choose default command line output for olimpiade
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes olimpiade wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = olimpiade_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function et_krit1_Callback(hObject, eventdata, handles)
% hObject    handle to et_krit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_krit1 as text
%        str2double(get(hObject,'String')) returns contents of et_krit1 as a double


% --- Executes during object creation, after setting all properties.
function et_krit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_krit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_krit2_Callback(hObject, eventdata, handles)
% hObject    handle to et_krit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_krit2 as text
%        str2double(get(hObject,'String')) returns contents of et_krit2 as a double


% --- Executes during object creation, after setting all properties.
function et_krit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_krit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function et_krit3_Callback(hObject, eventdata, handles)
% hObject    handle to et_krit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_krit3 as text
%        str2double(get(hObject,'String')) returns contents of et_krit3 as a double


% --- Executes during object creation, after setting all properties.
function et_krit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_krit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_tentu.
function btn_tentu_Callback(hObject, eventdata, handles)
% hObject    handle to btn_tentu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input = get(handles.tabel_input,'Data');

nama = input(:,1);%Mengambil data dari tabel(kolom 1)
krit = input(:,2:4);%Mengambil data dari tabel(kolom 2-4)

axes(handles.pic);%deklarasi axes

maksKrit1 = 500;%Nilai Maks kriteria 1
maksKrit2 = 250;%Nilai Maks kriteria 2
maksKrit3 = 250;%Nilai Maks kriteria 3

dataInput = cell2table(krit);%Mengubah data nilai dari cell
%menjadi tabel
data = table2array(dataInput);%Mengubah data nama dari 
%table ke array

%normalisasi data per kriteria
data(:,1) = data(:,1)/maksKrit1;
data(:,2) = data(:,2)/maksKrit2;
data(:,3) = data(:,3)/maksKrit3;

%Pemberian relasi
%Kriteria 1 2x lebih penting dari Kriteria 2
%Kriteria 1 2x lebih penting dari Kriteria 3
%Kriteria 2 4x lebih paneint dari Kriteria 3
relasiAntarKriteria = [ 1 2 2
                        0 1 4
                        0 0 1];
%TFN(Triangular Fuzzy Number) sejumlah 20 data(max data)
TFN = {[-100/3 0     100/3] [3/100 0     -3/100]
       [0      100/3 200/3] [3/200 3/100 0     ]
       [100/3  200/3 300/3] [3/300 3/200 3/100 ]
       [200/3  300/3 400/3] [3/400 3/300 3/200 ]
       [300/3  400/3 500/3] [3/500 3/400 3/300 ]
       [400/3  500/3 600/3] [3/600 3/500 3/400 ]
       [500/3  600/3 700/3] [3/700 3/600 3/500 ]
       [600/3  700/3 800/3] [3/800 3/700 3/600 ]
       [700/3  800/3 900/3] [3/900 3/800 3/700 ]
       [800/3  900/3 1000/3] [3/1000 3/900 3/800 ]
       [900/3  1000/3 1100/3] [3/1100 3/1000 3/900 ]
       [1000/3  1100/3 1200/3] [3/1200 3/1100 3/1000 ]
       [1100/3  1200/3 1300/3] [3/1300 3/1200 3/1100 ]
       [1200/3  1300/3 1400/3] [3/1400 3/1300 3/1200 ]
       [1300/3  1400/3 1500/3] [3/1500 3/1400 3/1300 ]
       [1400/3  1500/3 1600/3] [3/1600 3/1500 3/1400 ]
       [1500/3  1600/3 1700/3] [3/1700 3/1600 3/1500 ]
       [1600/3  1700/3 1800/3] [3/1800 3/1700 3/1600 ]
       [1700/3  1800/3 1900/3] [3/1900 3/1800 3/1700 ]
       [1800/3  1900/3 2000/3] [3/2000 3/1900 3/1800 ]};

%Menentukan Indeks Konsistensi Acak yang digunakan
%Nilai yang nantinya dipakai adalah nilai pada indeks sebanyak
%jumlah kriteria yang ada
indeksAcak = [0 0 0.58 0.9 1.12 1.24 1.32 1.41 1.45 1.49];

%Menghitung jumlah kriteria yang sesuai dengan ukuran matriks
%relasi antar kriteria
[op, jumlahKriteria] = size(relasiAntarKriteria);
%Menghitung nilai lambda, yaitu nilai eigenvalue dengan
%menggunakan fungsi eigenvector
[opp, lambda] = eig(relasiAntarKriteria);
%Menentukan maksimal nilai lambda yang telah dihitung sebelumnya
maksLambda = max(max(lambda));
%Menentukan nilai indeks konsistensi dengan rumus
%(maksLambda-n)/(n-1)
IndeksKonsistensi = (maksLambda - jumlahKriteria)/(jumlahKriteria - 1);
%Menghitung rasio konsistensi untuk mendapatkan jawaban akhir
RasioKonsistensi = IndeksKonsistensi / indeksAcak(1,jumlahKriteria);
%Jika nilai rasio konsistensi lebih dari 0.1, maka tampilkan
%pesan kesalahan
if RasioKonsistensi > 0.10
    str = 'Matriks yang dievaluasi tidak konsisten!';
    str = printf(str,RasioKonsistensi);
    disp(str);
end
if RasioKonsistensi < 0.10
    % Metode Fuzzy AHP
    fuzzyRelasi = {};
    [jumlahData, jumlahKriteria] = size(relasiAntarKriteria);

    %Lakukan konversi masing-masing relasi antar kriteria
    %menjadi TFN (Triangular Fuzzy Number)
    
    %Lakukan perhitungan pada matriks relasi antar kriteria

    for i = 1:jumlahData
        for j =i+1:jumlahData
            %1 / transpose (disesuaikan seperti tfn)
            relasiAntarKriteria(j,i) = 1 / relasiAntarKriteria(i,j);
        end
    end
    %Lakukan perhitungan pada matriks relasi antar kriteria
    %Jika nilai matriks relasi antar kriteria lebih dari 1,
    %maka nilai TFN yang digunakan adalah nilai kriteria pada
    %kelompok pertama
    %Jika nilai matriks relasi antar kriteria kurang dari 1,
    %maka nilai TFN yang digunakan adalah nilai kriteria pada
    %kelompok kedua
    for i = 1:jumlahData
        for j = 1:jumlahKriteria
            kriteria = relasiAntarKriteria(i,j);
            if kriteria >= 1
                fuzzyRelasi{i,j} = TFN{kriteria ,1};
            else
                fuzzyRelasi{i,j} = TFN{round(kriteria^-1) ,2};
            end
        end
    end
    %Hitung jumlah dari masing-masing TFN yang dipakai dalam
    %matriks relasi antar kriteria
    %Kemudian dari nilai tersebut, jumlahkan nilai pada
    %masing-masing kolom kriteria
    for i = 1:jumlahData
        barisRelasi = [fuzzyRelasi{i,:}];
        jumlahRelasiPerBaris{1,i} = sum (reshape(barisRelasi,3,[])');
    end

    RelasiPerData = [jumlahRelasiPerBaris{1,:}];
    jumlahRelasiPerKolom = sum(reshape(RelasiPerData,3,[])');

    %Lakukan perhitungan pada masing-masing nilai relasi pada
    %masing-masing kolom
    %Lakukan pembagian dengan jumlah relasi pada masing-masing
    %kolom
    %Kemudian catat jumlah dari pembagian tersebut untuk setiap
    %kolomnya
    for i = 1:jumlahData
        RelasiPerData = [jumlahRelasiPerBaris{1,i}];
        for j =1:3
            nilaiRelasiPerKolom = jumlahRelasiPerKolom(1,j);
            jumlahPerKolom(1,j) = (RelasiPerData(1,j)) * (1/nilaiRelasiPerKolom);
        end
        jumlahRelasiPerBaris{1,i} = jumlahPerKolom;
    end
    %Rumus yang digunakan adalah:
    %               /---
    %               | jika m2>=m1 1
    %               |
    %               | jika l1>=l2 0
    % V(M2>=M1) = <
    %               |                       l1-u2
    %               | selain itu        ---------------
    %               |                   (m1-u2)-(m1-l1)
    %               \---
    derajatKemungkinan = zeros(jumlahData*(jumlahData-1),3);
    idxBaris = 1;
    %Lakukan perhitungan pada masing-masing data dengan indeks
    %baris dan kolom tidak sama
    for i=1:jumlahData
        for j=1:jumlahData
            if i~=j
                %Masukkan nilai awal derajat kemungkinan, M1,
                %dan M2 sesuai rumus yang telah dijelaskan sebelumnya
                derajatKemungkinan(idxBaris,[1 2]) = [i j];
                M1 = jumlahRelasiPerBaris{1,i};
                M2 = jumlahRelasiPerBaris{1,j};
                %Hitung nilai derajat kemungkinan menggunakan
                %rumus yang telah dijelaskan sebelumnya
                if M1(1,2) >= M2(1,2)
                    derajatKemungkinan(idxBaris,3) = 1;
                elseif M2(1,1) >= M1(1,3)
                    derajatKemungkinan(idxBaris,3) = 0;
                else
                    derajatKemungkinan(idxBaris,3) = (M2(1,1)- M1(1,3))/((M1(1,2)-M1(1,3))-(M2(1,2)-M2(1,1)));
                end
            idxBaris = idxBaris + 1;
            end
        end
    end
    %Hitung nilai bobot menggunakan nilai derajat kemungkinan
    %minimal pada masing-masing kriteria
    bobotAntarKriteria = zeros(1,jumlahData); %6h
    for i=1:jumlahData,
        bobotAntarKriteria(1,i) = min(derajatKemungkinan([find(derajatKemungkinan(:,1) == i)],[3]));
    end

    %Lakukan normalisasi terhadap nilai bobot yang telah
    %dihitung
    %yaitu dengan cara membagi masing-masing nilai bobot dengan
    %total semua bobot
    bobotAntarKriteria = bobotAntarKriteria/sum(bobotAntarKriteria); %6i
    % Hitung nilai skor akhir    
    handles.ahp = data * bobotAntarKriteria';
    
    statuses = {};
    handles.name = {};
    %Klasifikasi nilai
    for i = 1:size(handles.ahp, 1)
        if handles.ahp(i) < 0.5
            status = 'Tidak Mendapat Medali';
        elseif handles.ahp(i) < 0.7
            status = 'Medali Perunggu';
        elseif handles.ahp(i) < 0.9
            status = 'Medali Perak';
        else
            status = 'Medali Emas'; 
        end
        
        handles.name{i,1} = nama(i);
        statuses{i,1} = status;
    end
    dataNilai = array2table(handles.ahp);
    dataMedali = array2table(statuses);
    dataAll = table2cell([dataMedali dataNilai]);
    set(handles.tabel_hasil, 'Data', dataAll);

end
guidata(hObject, handles);


% --- Executes on button press in btn_clear.
function btn_clear_Callback(hObject, eventdata, handles)
% hObject    handle to btn_clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.et_nama, 'String', '');
set(handles.et_krit1, 'String', '');
set(handles.et_krit2, 'String', '');
set(handles.et_krit3, 'String', '');


function et_angka_Callback(hObject, eventdata, handles)
% hObject    handle to et_angka (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_angka as text
%        str2double(get(hObject,'String')) returns contents of et_angka as a double


% --- Executes during object creation, after setting all properties.
function et_angka_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_angka (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_teks_Callback(hObject, eventdata, handles)
% hObject    handle to et_teks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_teks as text
%        str2double(get(hObject,'String')) returns contents of et_teks as a double


% --- Executes during object creation, after setting all properties.
function et_teks_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_teks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_nama_Callback(hObject, eventdata, handles)
% hObject    handle to et_nama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_nama as text
%        str2double(get(hObject,'String')) returns contents of et_nama as a double


% --- Executes during object creation, after setting all properties.
function et_nama_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_nama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_simpan.
function btn_simpan_Callback(hObject, eventdata, handles)
% hObject    handle to btn_simpan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

input = get(handles.tabel_input,'Data');
dataTabel = input(:,2);

if size(dataTabel, 1) > 19
    errordlg('Jumlah maksimal data adalah 20');
    return;
end

nama = get(handles.et_nama,'string');
krit1 = str2double(get(handles.et_krit1,'string'));
krit2 = str2double(get(handles.et_krit2,'string'));
krit3 = str2double(get(handles.et_krit3,'string'));

if isempty(nama)
    errordlg('Nama tidak boleh kosong', 'Nama Salah');
    set(handles.et_nama, 'String', '');
    return;

elseif krit1 > 500 || krit1 < 0 || isempty(krit1) || isnan(krit1)
    errordlg('Nilai Matematika harus berisi angka di antara 0-500', 'Nilai Matematika Salah');
    set(handles.et_krit1, 'String', '');
    return;
    
elseif krit2 > 250 || krit2 < 0 || isempty(krit2) || isnan(krit2)
    errordlg('Nilai IPA harus berisi angka di antara 0-250', 'Nilai IPA Salah');
    set(handles.et_krit2, 'String', '');
    return;
    
elseif krit3 > 250 || krit3 < 0 || isempty(krit3) || isnan(krit3)
    errordlg('Nilai TPA harus berisi angka di antara 0-250', 'Nilai TPA Salah');
    set(handles.et_krit3, 'String', '');
    return;
end

krit = [krit1 krit2 krit3];

dataID = array2table({nama});
dataKrit = array2table(krit);
MyData = table2cell([dataID dataKrit]);

handles.MyDataAll = [handles.MyDataAll ; MyData];

set(handles.tabel_input, 'Data', handles.MyDataAll);

guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function tabel_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tabel_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
handles.MyDataAll = [];

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function tabel_hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tabel_hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --------------------------------------------------------------------
function tabel_input_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to tabel_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected cell(s) is changed in tabel_input.
function tabel_input_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to tabel_input (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
selectedRow = eventdata.Indices(1);
gold = imread('gold.png');
silver = imread('silver.png');
bronze = imread('bronze.png');
none = imread('none.png');

set(handles.et_hasil, 'visible', 'on');
set(handles.panel_detail, 'visible', 'on');

hasilNama = char(handles.name{selectedRow});

if handles.ahp(selectedRow) < 0.5
    ucapan = sprintf("Maaf, %s tidak mendapatkan medali :(", hasilNama);
    imshow(none);
elseif handles.ahp(selectedRow) < 0.7
    ucapan = sprintf("Selamat, %s mendapatkan medali PERUNGGU", hasilNama);
    imshow(bronze);
elseif handles.ahp(selectedRow) < 0.9
    ucapan = sprintf("Selamat, %s mendapatkan medali PERAK", hasilNama);
    imshow(silver);
else
    ucapan = sprintf("Selamat, %s mendapatkan medali EMAS", hasilNama);
    imshow(gold);
end

set(handles.et_hasil, 'String', ucapan);

guidata(hObject, handles);



function et_hasil_Callback(hObject, eventdata, handles)
% hObject    handle to et_hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_hasil as text
%        str2double(get(hObject,'String')) returns contents of et_hasil as a double


% --- Executes during object creation, after setting all properties.
function et_hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
