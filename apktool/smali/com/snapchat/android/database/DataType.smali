.class public final enum Lcom/snapchat/android/database/DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/DataType;

.field public static final enum BOOLEAN:Lcom/snapchat/android/database/DataType;

.field public static final enum INTEGER:Lcom/snapchat/android/database/DataType;

.field public static final enum LONG:Lcom/snapchat/android/database/DataType;

.field public static final enum MAP:Lcom/snapchat/android/database/DataType;

.field public static final enum REAL:Lcom/snapchat/android/database/DataType;

.field public static final enum TEXT:Lcom/snapchat/android/database/DataType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "TEXT"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    .line 8
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "MAP"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->MAP:Lcom/snapchat/android/database/DataType;

    .line 9
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    .line 10
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "LONG"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->LONG:Lcom/snapchat/android/database/DataType;

    .line 11
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "BOOLEAN"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v8, v2}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    .line 12
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "REAL"

    const/4 v2, 0x5

    const-string v3, "REAL"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->REAL:Lcom/snapchat/android/database/DataType;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/database/DataType;

    sget-object v1, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/database/DataType;->MAP:Lcom/snapchat/android/database/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/database/DataType;->LONG:Lcom/snapchat/android/database/DataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/DataType;->REAL:Lcom/snapchat/android/database/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/DataType;->$VALUES:[Lcom/snapchat/android/database/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/snapchat/android/database/DataType;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/database/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/database/DataType;->$VALUES:[Lcom/snapchat/android/database/DataType;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/DataType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/database/DataType;->a:Ljava/lang/String;

    return-object v0
.end method
