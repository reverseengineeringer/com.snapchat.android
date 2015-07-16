.class public final enum Lbvq$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lbvk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbvq$a;",
        ">;",
        "Lbvk",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbvq$a;

.field private static final synthetic b:[Lbvq$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lbvq$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lbvq$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbvq$a;->a:Lbvq$a;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Lbvq$a;

    const/4 v1, 0x0

    sget-object v2, Lbvq$a;->a:Lbvq$a;

    aput-object v2, v0, v1

    sput-object v0, Lbvq$a;->b:[Lbvq$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbvq$a;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lbvq$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbvq$a;

    return-object v0
.end method

.method public static values()[Lbvq$a;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lbvq$a;->b:[Lbvq$a;

    invoke-virtual {v0}, [Lbvq$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbvq$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46
    :cond_0
    return-void
.end method
