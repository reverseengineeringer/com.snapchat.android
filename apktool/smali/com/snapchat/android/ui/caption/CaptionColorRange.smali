.class public Lcom/snapchat/android/ui/caption/CaptionColorRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field final a:I

.field final b:I

.field final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->a:I

    .line 17
    iput p2, p0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->b:I

    .line 18
    iput p3, p0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c:I

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->a:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->b:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c:I

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 35
    return-void
.end method
