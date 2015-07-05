.class public final enum Lbra;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbra;

.field public static final enum b:Lbra;

.field public static final enum c:Lbra;

.field public static final enum d:Lbra;

.field private static f:Landroid/util/SparseArray;

.field private static final synthetic g:[Lbra;


# instance fields
.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lbra;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v2, v2}, Lbra;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbra;->a:Lbra;

    .line 10
    new-instance v0, Lbra;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3, v3}, Lbra;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbra;->b:Lbra;

    .line 11
    new-instance v0, Lbra;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lbra;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbra;->c:Lbra;

    .line 12
    new-instance v0, Lbra;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v5, v5}, Lbra;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbra;->d:Lbra;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lbra;

    sget-object v1, Lbra;->a:Lbra;

    aput-object v1, v0, v2

    sget-object v1, Lbra;->b:Lbra;

    aput-object v1, v0, v3

    sget-object v1, Lbra;->c:Lbra;

    aput-object v1, v0, v4

    sget-object v1, Lbra;->d:Lbra;

    aput-object v1, v0, v5

    sput-object v0, Lbra;->g:[Lbra;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 18
    sput-object v0, Lbra;->f:Landroid/util/SparseArray;

    sget-object v1, Lbra;->a:Lbra;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lbra;->f:Landroid/util/SparseArray;

    sget-object v1, Lbra;->b:Lbra;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lbra;->e:I

    .line 26
    return-void
.end method

.method public static a(I)Lbra;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lbra;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbra;

    .line 35
    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lbra;->c:Lbra;

    .line 39
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbra;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lbra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbra;

    return-object v0
.end method

.method public static values()[Lbra;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lbra;->g:[Lbra;

    invoke-virtual {v0}, [Lbra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbra;

    return-object v0
.end method
