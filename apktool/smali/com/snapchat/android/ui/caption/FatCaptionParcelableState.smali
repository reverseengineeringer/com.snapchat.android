.class public Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:F

.field protected b:F

.field protected c:[F

.field protected d:F

.field protected e:F

.field protected f:I

.field protected g:I

.field protected h:D

.field protected i:D


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget v0, p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:F

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->a:F

    .line 25
    iget v0, p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->b:F

    .line 26
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedCenterPoint()[F

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->c:[F

    .line 27
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->d:F

    .line 28
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->e:F

    .line 29
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->f:I

    .line 30
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->g:I

    .line 31
    iget-wide v0, p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:D

    iput-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->h:D

    .line 32
    iget-wide v0, p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:D

    iput-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->i:D

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 53
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->c:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 55
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 56
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 57
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->h:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 60
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->i:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 61
    return-void
.end method
