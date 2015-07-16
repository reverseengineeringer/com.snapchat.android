.class final Laxs$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxs;-><init>(Lcom/snapchat/android/util/cache/CacheType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Laxn$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Laxs;

.field final synthetic val$maxEntries:I


# direct methods
.method constructor <init>(Laxs;II)V
    .locals 2

    .prologue
    .line 19
    iput-object p1, p0, Laxs$1;->this$0:Laxs;

    iput p3, p0, Laxs$1;->val$maxEntries:I

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Laxs$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn$a;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Laxn$a;->mUri:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn$a;

    return-object v0
.end method

.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Laxn$a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Laxs$1;->size()I

    move-result v0

    iget v1, p0, Laxs$1;->val$maxEntries:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
