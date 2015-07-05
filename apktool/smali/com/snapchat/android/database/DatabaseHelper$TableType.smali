.class public final enum Lcom/snapchat/android/database/DatabaseHelper$TableType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/DatabaseHelper$TableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/DatabaseHelper$TableType;

.field public static final enum TABLE:Lcom/snapchat/android/database/DatabaseHelper$TableType;

.field public static final enum VIEW:Lcom/snapchat/android/database/DatabaseHelper$TableType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;

    const-string v1, "TABLE"

    const-string v2, "table"

    invoke-direct {v0, v1, v3, v2}, Lcom/snapchat/android/database/DatabaseHelper$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;->TABLE:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    .line 42
    new-instance v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;

    const-string v1, "VIEW"

    const-string v2, "view"

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/database/DatabaseHelper$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;->VIEW:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/database/DatabaseHelper$TableType;

    sget-object v1, Lcom/snapchat/android/database/DatabaseHelper$TableType;->TABLE:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/database/DatabaseHelper$TableType;->VIEW:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;->$VALUES:[Lcom/snapchat/android/database/DatabaseHelper$TableType;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/snapchat/android/database/DatabaseHelper$TableType;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/DatabaseHelper$TableType;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/DatabaseHelper$TableType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;->$VALUES:[Lcom/snapchat/android/database/DatabaseHelper$TableType;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/DatabaseHelper$TableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/DatabaseHelper$TableType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/snapchat/android/database/DatabaseHelper$TableType;->a:Ljava/lang/String;

    return-object v0
.end method
