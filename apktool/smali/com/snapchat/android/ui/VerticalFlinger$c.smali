.class final Lcom/snapchat/android/ui/VerticalFlinger$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/VerticalFlinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/VerticalFlinger$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 125
    sput v3, Lcom/snapchat/android/ui/VerticalFlinger$c;->a:I

    .line 126
    sput v4, Lcom/snapchat/android/ui/VerticalFlinger$c;->b:I

    .line 127
    sput v5, Lcom/snapchat/android/ui/VerticalFlinger$c;->c:I

    .line 128
    sput v0, Lcom/snapchat/android/ui/VerticalFlinger$c;->d:I

    .line 124
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/snapchat/android/ui/VerticalFlinger$c;->a:I

    aput v2, v0, v1

    sget v1, Lcom/snapchat/android/ui/VerticalFlinger$c;->b:I

    aput v1, v0, v3

    sget v1, Lcom/snapchat/android/ui/VerticalFlinger$c;->c:I

    aput v1, v0, v4

    sget v1, Lcom/snapchat/android/ui/VerticalFlinger$c;->d:I

    aput v1, v0, v5

    sput-object v0, Lcom/snapchat/android/ui/VerticalFlinger$c;->e:[I

    return-void
.end method
