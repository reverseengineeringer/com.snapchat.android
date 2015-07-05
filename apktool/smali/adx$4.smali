.class final synthetic Ladx$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->values()[Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ladx$4;->b:[I

    :try_start_0
    sget-object v0, Ladx$4;->b:[I

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->LOOPING:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Ladx$4;->b:[I

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->ONCE:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    .line 96
    :goto_1
    invoke-static {}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->values()[Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ladx$4;->a:[I

    :try_start_2
    sget-object v0, Ladx$4;->a:[I

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_BOTTOM:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Ladx$4;->a:[I

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_CENTER:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Ladx$4;->a:[I

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
