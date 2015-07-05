.class public final enum Lcom/snapchat/android/discover/model/DSnapPage$Form;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPage$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/DSnapPage$Form;

.field public static final enum LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

.field public static final enum TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;

    const-string v1, "TOP_SNAP"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/model/DSnapPage$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    .line 30
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;

    const-string v1, "LONGFORM"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/discover/model/DSnapPage$Form;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->$VALUES:[Lcom/snapchat/android/discover/model/DSnapPage$Form;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Form;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;

    return-object v0
.end method

.method public static valueOfIgnoreCase(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Form;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 42
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Form;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/DSnapPage$Form;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->$VALUES:[Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/DSnapPage$Form;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/DSnapPage$Form;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
