.class public final enum Lcom/snapchat/android/api2/framework/RequestBodyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/framework/RequestBodyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/framework/RequestBodyType;

.field public static final enum BYTE_ARRAY:Lcom/snapchat/android/api2/framework/RequestBodyType;

.field public static final enum FILE:Lcom/snapchat/android/api2/framework/RequestBodyType;

.field public static final enum FORM_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

.field public static final enum JSON_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

.field public static final enum MULTI_PART_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

.field public static final enum UNKNOWN:Lcom/snapchat/android/api2/framework/RequestBodyType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/snapchat/android/api2/framework/RequestBodyType;

    const-string v1, "FORM_ENCODED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/framework/RequestBodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->FORM_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

    .line 12
    new-instance v0, Lcom/snapchat/android/api2/framework/RequestBodyType;

    const-string v1, "JSON_ENCODED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/framework/RequestBodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->JSON_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

    .line 13
    new-instance v0, Lcom/snapchat/android/api2/framework/RequestBodyType;

    const-string v1, "MULTI_PART_ENCODED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api2/framework/RequestBodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->MULTI_PART_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

    .line 14
    new-instance v0, Lcom/snapchat/android/api2/framework/RequestBodyType;

    const-string v1, "BYTE_ARRAY"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/api2/framework/RequestBodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->BYTE_ARRAY:Lcom/snapchat/android/api2/framework/RequestBodyType;

    .line 15
    new-instance v0, Lcom/snapchat/android/api2/framework/RequestBodyType;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/api2/framework/RequestBodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->FILE:Lcom/snapchat/android/api2/framework/RequestBodyType;

    .line 16
    new-instance v0, Lcom/snapchat/android/api2/framework/RequestBodyType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/framework/RequestBodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->UNKNOWN:Lcom/snapchat/android/api2/framework/RequestBodyType;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/api2/framework/RequestBodyType;

    sget-object v1, Lcom/snapchat/android/api2/framework/RequestBodyType;->FORM_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/framework/RequestBodyType;->JSON_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api2/framework/RequestBodyType;->MULTI_PART_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/api2/framework/RequestBodyType;->BYTE_ARRAY:Lcom/snapchat/android/api2/framework/RequestBodyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/api2/framework/RequestBodyType;->FILE:Lcom/snapchat/android/api2/framework/RequestBodyType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/api2/framework/RequestBodyType;->UNKNOWN:Lcom/snapchat/android/api2/framework/RequestBodyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->$VALUES:[Lcom/snapchat/android/api2/framework/RequestBodyType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static typeOf(Ljava/lang/Object;)Lcom/snapchat/android/api2/framework/RequestBodyType;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 23
    instance-of v1, p0, Luw;

    if-eqz v1, :cond_0

    .line 24
    check-cast p0, Luw;

    iget-object v0, p0, Luw;->mType:Lcom/snapchat/android/api2/framework/RequestBodyType;

    .line 36
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const-class v1, Lun;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 26
    sget-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->JSON_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

    goto :goto_0

    .line 27
    :cond_1
    const-class v1, Lud;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 28
    sget-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->FORM_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

    goto :goto_0

    .line 29
    :cond_2
    const-class v1, Luo;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 30
    sget-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->MULTI_PART_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

    goto :goto_0

    .line 31
    :cond_3
    instance-of v0, p0, [B

    if-eqz v0, :cond_4

    .line 32
    sget-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->BYTE_ARRAY:Lcom/snapchat/android/api2/framework/RequestBodyType;

    goto :goto_0

    .line 33
    :cond_4
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_5

    .line 34
    sget-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->FILE:Lcom/snapchat/android/api2/framework/RequestBodyType;

    goto :goto_0

    .line 36
    :cond_5
    sget-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->UNKNOWN:Lcom/snapchat/android/api2/framework/RequestBodyType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/framework/RequestBodyType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/snapchat/android/api2/framework/RequestBodyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/framework/RequestBodyType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/framework/RequestBodyType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/snapchat/android/api2/framework/RequestBodyType;->$VALUES:[Lcom/snapchat/android/api2/framework/RequestBodyType;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/framework/RequestBodyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/framework/RequestBodyType;

    return-object v0
.end method
