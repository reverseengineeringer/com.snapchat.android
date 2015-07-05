.class public final Lcom/snapchat/android/notification/AndroidNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/notification/AndroidNotificationManager$2;,
        Lcom/snapchat/android/notification/AndroidNotificationManager$b;,
        Lcom/snapchat/android/notification/AndroidNotificationManager$a;,
        Lcom/snapchat/android/notification/AndroidNotificationManager$Type;,
        Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;
    }
.end annotation


# static fields
.field public static final a:I

.field private static final e:[Ljava/lang/String;

.field private static final f:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private static final g:[J

.field private static h:Ljava/lang/String;


# instance fields
.field public final b:Laol;

.field public final c:Lakc;

.field public d:Z

.field private final i:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

.field private final j:Ltd;

.field private final k:Lni;

.field private l:Lalx;

.field private m:Laly;

.field private final n:Lajx;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->e:[Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-direct {v0}, Lcom/snapchat/android/notification/AndroidNotificationManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->f:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 151
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->g:[J

    .line 153
    const-string v0, "#AAAAAA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->a:I

    return-void

    .line 151
    nop

    :array_0
    .array-data 8
        0x0
        0x32
        0x64
        0xb4
    .end array-data
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    .line 191
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v1

    invoke-static {}, Laol;->a()Laol;

    move-result-object v2

    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v3

    invoke-static {}, Ltd;->a()Ltd;

    move-result-object v4

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v5

    invoke-static {}, Lalx;->a()Lalx;

    move-result-object v6

    new-instance v7, Laly;

    invoke-direct {v7}, Laly;-><init>()V

    invoke-static {}, Lni;->a()Lni;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/notification/AndroidNotificationManager;-><init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Laol;Lakc;Ltd;Lajx;Lalx;Laly;Lni;)V

    .line 195
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Laol;Lakc;Ltd;Lajx;Lalx;Laly;Lni;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->i:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 206
    iput-object p2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->b:Laol;

    .line 207
    iput-object p3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->c:Lakc;

    .line 208
    iput-object p4, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->j:Ltd;

    .line 209
    iput-object p5, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->n:Lajx;

    .line 210
    iput-object p6, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->l:Lalx;

    .line 211
    iput-object p7, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->m:Laly;

    .line 212
    iput-object p8, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->k:Lni;

    .line 213
    return-void
.end method

.method public static a()Lcom/snapchat/android/notification/AndroidNotificationManager;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->f:Lcom/snapchat/android/notification/AndroidNotificationManager;

    return-object v0
.end method

.method private static a(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lajz;",
            "Lcom/snapchat/android/notification/AndroidNotificationManager$a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajz;

    .line 868
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 869
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :cond_1
    invoke-virtual {v0}, Lajz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    .line 873
    iget v3, v0, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->b:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 874
    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    iget v0, v0, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 876
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 880
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 224
    const-string v0, "AndroidNotificationManager"

    const-string v2, "clearAllNotifications"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 228
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->values()[Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 229
    invoke-virtual {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->getNotificationId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 230
    invoke-virtual {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;)V
    .locals 11
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 738
    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 739
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 740
    :cond_0
    invoke-static {p1, v5}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    .line 790
    :goto_0
    return-void

    .line 744
    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move v8, v0

    .line 749
    :cond_2
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 750
    sget-object v4, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 752
    sget-object v6, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CASH_AMOUNT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v6}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 756
    invoke-virtual {v3, v1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 759
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    move v8, v1

    .line 762
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 764
    invoke-static {v5}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)I

    move-result v1

    .line 765
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 766
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 767
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 769
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 776
    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 780
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 781
    aget-object v0, v1, v0

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 785
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 786
    new-instance v6, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    invoke-direct {v6, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$a;-><init>(Ljava/lang/String;)V

    .line 788
    :goto_3
    invoke-static {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V

    goto/16 :goto_0

    :cond_4
    move v1, v0

    .line 759
    goto :goto_1

    .line 771
    :pswitch_0
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 772
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v6, v7

    goto :goto_3

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 10
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 683
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 684
    :cond_0
    invoke-static {p1, p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    .line 734
    :cond_1
    :goto_0
    return-void

    .line 688
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 689
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    move v8, v3

    move-object v1, v7

    .line 694
    :goto_1
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 695
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-virtual {v6, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 699
    if-nez v1, :cond_9

    .line 700
    :goto_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    :goto_3
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TEXT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 705
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 706
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_4
    move v8, v1

    .line 709
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 711
    invoke-static {p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)I

    move-result v1

    .line 712
    if-gez v1, :cond_4

    invoke-static {p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 718
    :cond_4
    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-ne v6, v2, :cond_8

    .line 719
    new-instance v6, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    invoke-direct {v6, v0}, Lcom/snapchat/android/notification/AndroidNotificationManager$a;-><init>(Ljava/lang/String;)V

    .line 723
    :goto_5
    invoke-static {p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 724
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 725
    invoke-static {p4}, Lni;->b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 706
    goto :goto_4

    :cond_6
    move-object v3, v4

    .line 732
    :goto_6
    invoke-static {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V

    goto/16 :goto_0

    .line 730
    :cond_7
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_7
    aget-object v1, v1, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v5, v4, v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :pswitch_0
    invoke-static {v7, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_7

    :pswitch_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_7

    :cond_8
    move-object v6, v7

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_3

    :cond_b
    move-object v1, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/notification/AndroidNotificationManager$Type;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 235
    const-string v0, "AndroidNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearNotifications type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 238
    invoke-virtual {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->getNotificationId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 239
    invoke-virtual {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V
    .locals 6
    .param p6    # Lcom/snapchat/android/notification/AndroidNotificationManager$a;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/android/notification/AndroidNotificationManager$b;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 902
    invoke-static {}, Lajx;->bL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 909
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, p5, p6, p7, v2}, Laly;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 910
    iget-object v2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->b:Laol;

    invoke-virtual {p5}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "op_code"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "clear"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "notification_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 911
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel$7abcb88d()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iput-object v1, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    if-eqz p8, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {v3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 923
    invoke-static {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 924
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const v4, 0x7f020187

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v4, 0x15

    if-lt v3, v4, :cond_8

    if-eqz v1, :cond_7

    const v1, 0x7f020183

    :goto_1
    invoke-static {p1, v1}, Laur;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->a:[I

    invoke-virtual {p5}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080047

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_2
    iput v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    .line 927
    :goto_3
    if-nez p8, :cond_a

    invoke-static {}, Lajx;->bH()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    .line 928
    :goto_4
    if-eqz v1, :cond_3

    .line 929
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager;->g:[J

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 933
    :cond_3
    if-nez p8, :cond_b

    invoke-static {}, Lajx;->bI()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 934
    :goto_5
    if-eqz v1, :cond_4

    .line 935
    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v3, 0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 938
    :cond_4
    invoke-static {}, Lajx;->bJ()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 939
    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/16 v3, -0x100

    iput v3, v1, Landroid/app/Notification;->ledARGB:I

    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/16 v3, 0x3e8

    iput v3, v1, Landroid/app/Notification;->ledOnMS:I

    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/16 v3, 0x7d0

    iput v3, v1, Landroid/app/Notification;->ledOffMS:I

    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->ledOnMS:I

    if-eqz v1, :cond_c

    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->ledOffMS:I

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_6
    iget-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_7
    or-int/2addr v1, v4

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 943
    :cond_5
    new-instance v1, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 944
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020085

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 945
    invoke-interface {v1, v2}, Landroid/support/v4/app/NotificationCompat$Extender;->extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 947
    sget-boolean v1, Lasu;->SUPPORTS_NOTIFICATION_PRIORITY:Z

    if-eqz v1, :cond_6

    .line 948
    const/4 v1, 0x1

    iput v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 950
    :cond_6
    invoke-virtual {p5}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->getNotificationId()I

    move-result v1

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 952
    if-nez p8, :cond_e

    invoke-static {}, Lajx;->bK()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 953
    :goto_8
    if-eqz v0, :cond_0

    .line 954
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x10000006

    const-string v2, "MyLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    .line 924
    :cond_7
    const v1, 0x7f020185

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080047

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080052

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080040

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_2

    :cond_8
    if-eqz v1, :cond_9

    const v1, 0x7f020184

    :goto_9
    invoke-static {p1, v1}, Laur;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    :cond_9
    const v1, 0x7f020186

    goto :goto_9

    .line 927
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 933
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 939
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 952
    :cond_e
    const/4 v0, 0x0

    goto :goto_8

    .line 924
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)Z
    .locals 2

    .prologue
    .line 793
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 798
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 796
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)I
    .locals 2

    .prologue
    .line 803
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 827
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 805
    :pswitch_1
    const v0, 0x7f070008

    goto :goto_0

    .line 809
    :pswitch_2
    const v0, 0x7f070009

    goto :goto_0

    .line 815
    :pswitch_3
    const v0, 0x7f07000a

    goto :goto_0

    .line 819
    :pswitch_4
    const v0, 0x7f070007

    goto :goto_0

    .line 823
    :pswitch_5
    const v0, 0x7f07000b

    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const v0, 0x7f0c0193

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->h:Ljava/lang/String;

    .line 246
    :cond_0
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/16 v9, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1029
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1033
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1035
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    const-string v4, "plain/text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1038
    const-string v4, "android.intent.extra.EMAIL"

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "shake2reportdroid@snapchat.com"

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    const-string v4, "android.intent.extra.SUBJECT"

    const-string v5, "[Android] New ANR Report"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const/high16 v0, 0x8000000

    invoke-static {p0, v2, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1044
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v4

    .line 1046
    new-instance v5, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 1047
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    const-string v0, "\n"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 1050
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 1051
    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1055
    :cond_1
    const/16 v0, 0x19

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 1065
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "ANR detected from Snapchat"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x1080078

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const-string v7, "ANR detected from Snapchat"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const-string v6, "Send E-mail"

    iget-object v7, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v8, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {v8, v6, v3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel$7abcb88d()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1077
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v5, "android.support.useSideChannel"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    if-eqz v1, :cond_3

    new-instance v1, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;

    iget-object v2, v4, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9, v0}, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    iget-object v1, v4, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, v9}, Landroid/support/v4/app/NotificationManagerCompat$Impl;->cancelNotification$21184a1(Landroid/app/NotificationManager;I)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    sget-object v1, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    iget-object v2, v4, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-interface {v1, v2, v9, v0}, Landroid/support/v4/app/NotificationManagerCompat$Impl;->postNotification$62d42cd7(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1055
    :array_0
    .array-data 8
        0x0
        0x190
        0xc8
        0x190
        0xc8
        0x190
        0xc8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x190
        0xc8
        0x190
        0xc8
        0x190
        0xc8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data
.end method


# virtual methods
.method public final varargs a(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 479
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v8

    const v1, 0x7f0c018d

    invoke-static {v6, v1, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-static {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->FAILED_CHAT_NOT_FRIENDS:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V

    .line 485
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snapchat/android/notification/AndroidNotificationManager$Type;ZLjava/lang/String;)V
    .locals 15
    .param p13    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 372
    iget-boolean v2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Z

    if-eqz v2, :cond_5

    .line 373
    iget-object v9, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->l:Lalx;

    sget-object v2, Lalx;->g:Ljava/util/Set;

    move-object/from16 v0, p11

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p11

    if-ne v0, v2, :cond_2

    iget-object v3, v9, Lalx;->e:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, v9, Lalx;->e:Ljava/util/Map;

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v9, Lalx;->e:Ljava/util/Map;

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/32 v10, 0x124f80

    cmp-long v2, v6, v10

    if-gez v2, :cond_1

    monitor-exit v3

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v2, v9, Lalx;->e:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p11

    if-ne v0, v2, :cond_4

    iget-object v3, v9, Lalx;->f:Ljava/util/Map;

    monitor-enter v3

    :try_start_1
    iget-object v2, v9, Lalx;->f:Ljava/util/Map;

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v9, Lalx;->f:Ljava/util/Map;

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/32 v10, 0x124f80

    cmp-long v2, v6, v10

    if-gez v2, :cond_3

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    iget-object v2, v9, Lalx;->f:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    iget-object v10, v9, Lalx;->c:Ljava/util/List;

    monitor-enter v10

    :try_start_4
    new-instance v2, Lalx$a;

    iget-object v3, v9, Lalx;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    move-object/from16 v3, p6

    move-object/from16 v4, p5

    move-object/from16 v5, p11

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lalx$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;JLjava/lang/String;)V

    iget-object v3, v9, Lalx;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v10

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 375
    :cond_5
    invoke-virtual/range {p11 .. p11}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-static/range {v2 .. v14}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 19

    .prologue
    .line 496
    const/4 v9, 0x0

    .line 497
    const/4 v8, 0x0

    .line 499
    const/4 v7, 0x0

    .line 500
    const/4 v6, 0x0

    .line 502
    const-wide/16 v4, 0x0

    .line 503
    const-wide/16 v2, 0x0

    .line 505
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->c:Lakc;

    invoke-virtual {v10}, Lakc;->e()Ljava/util/List;

    move-result-object v10

    .line 506
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v10, v9

    move v9, v8

    move v8, v7

    move/from16 v18, v6

    move-wide v6, v4

    move-wide v4, v2

    move/from16 v3, v18

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 507
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v15

    .line 508
    if-eqz v15, :cond_0

    .line 509
    monitor-enter v15

    .line 512
    :try_start_0
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v3

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 513
    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v12

    if-nez v12, :cond_1

    .line 514
    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v12

    .line 515
    instance-of v0, v3, Lakb;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 516
    check-cast v3, Lakb;

    .line 517
    sget-object v17, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 518
    cmp-long v3, v4, v12

    if-gez v3, :cond_10

    .line 521
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 523
    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v3, :cond_2

    .line 524
    add-int/lit8 v8, v8, 0x1

    :cond_2
    move-wide v4, v12

    .line 526
    goto :goto_1

    :cond_3
    instance-of v0, v3, Lcom/snapchat/android/model/Snap;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 527
    instance-of v0, v3, Laji;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 528
    check-cast v3, Laji;

    .line 529
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Laji;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    .line 531
    :cond_4
    cmp-long v3, v6, v12

    if-gez v3, :cond_5

    move-wide v6, v12

    .line 534
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 536
    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v3, :cond_1

    .line 537
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 542
    :cond_6
    monitor-exit v15

    move v3, v8

    move v8, v9

    move v9, v10

    move v10, v11

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 543
    :cond_7
    if-nez v9, :cond_9

    if-nez v10, :cond_9

    .line 575
    :cond_8
    :goto_3
    return-void

    .line 550
    :cond_9
    if-lez v9, :cond_b

    if-nez v10, :cond_b

    .line 551
    invoke-static/range {p1 .. p1}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v2

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v10, 0x0

    sget-object v11, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CHAT:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 558
    :goto_4
    if-nez v3, :cond_a

    if-eqz v8, :cond_8

    .line 560
    :cond_a
    if-lez v3, :cond_d

    if-nez v8, :cond_d

    .line 561
    const v2, 0x7f0c018c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 572
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->FAILED_SNAP_AND_CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V

    goto :goto_3

    .line 552
    :cond_b
    if-nez v9, :cond_c

    if-lez v10, :cond_c

    .line 553
    invoke-static/range {p1 .. p1}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v2

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v10, 0x0

    sget-object v11, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->SENT_SNAPS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_4

    .line 555
    :cond_c
    invoke-static/range {p1 .. p1}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v2

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v10, 0x0

    sget-object v11, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CHAT:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->SENT_SNAPS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_4

    .line 563
    :cond_d
    if-nez v3, :cond_e

    if-lez v8, :cond_e

    .line 564
    const v2, 0x7f0c018e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 565
    goto :goto_5

    .line 567
    :cond_e
    const v2, 0x7f0c018f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    cmp-long v2, v6, v4

    if-lez v2, :cond_f

    const v2, 0x7f0c018e

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v3

    goto :goto_5

    :cond_f
    const v2, 0x7f0c018c

    goto :goto_6

    :cond_10
    move-wide v12, v4

    goto/16 :goto_2
.end method

.method public final b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 18
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Z

    if-eqz v4, :cond_0

    .line 447
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    new-instance v5, Lbcb;

    invoke-direct {v5}, Lbcb;-><init>()V

    invoke-virtual {v4, v5}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 467
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 452
    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_7

    :cond_1
    const/4 v4, 0x1

    move v5, v4

    .line 453
    :goto_1
    if-eqz v5, :cond_8

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager;->e:[Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 456
    if-eqz v5, :cond_e

    .line 457
    :try_start_0
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v7, v4

    move-object v4, v5

    move v5, v9

    :goto_3
    sget-object v6, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v6}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v8

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CHAT_SEQ_NUM:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v9}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    new-instance v13, Lajz;

    invoke-direct {v13, v8, v6}, Lajz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p2

    if-ne v0, v6, :cond_9

    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_11

    const/4 v5, 0x1

    sget-object v4, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->ID:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v9, v5

    move-object v5, v4

    :goto_5
    invoke-virtual {v15, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    if-nez v4, :cond_2

    new-instance v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    invoke-virtual {v13}, Lajz;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/snapchat/android/notification/AndroidNotificationManager$a;-><init>(Ljava/lang/String;)V

    :cond_2
    iget v6, v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->b:I

    iget-wide v0, v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->c:J

    move-wide/from16 v16, v0

    cmp-long v6, v16, v10

    if-gez v6, :cond_3

    iput-wide v10, v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->c:J

    :cond_3
    invoke-virtual {v15, v13, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v14}, Landroid/database/Cursor;->isLast()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_a

    const/4 v4, 0x1

    :goto_6
    move v12, v4

    :goto_7
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v15}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lajz;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v13}, Lajz;->a()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v8, v10

    const/4 v4, 0x0

    const v10, 0x7f0c0192

    invoke-static {v4, v10, v8}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v4, v0, :cond_5

    if-nez v9, :cond_d

    invoke-virtual {v15, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    move-object v10, v4

    :cond_5
    :goto_8
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v12}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_9
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_6
    invoke-static/range {p2 .. p2}, Lni;->a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto/16 :goto_0

    .line 452
    :cond_7
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_1

    .line 453
    :cond_8
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    goto/16 :goto_2

    .line 457
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    :try_start_1
    invoke-static/range {p1 .. p2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 464
    :catchall_0
    move-exception v4

    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4

    .line 457
    :pswitch_0
    :try_start_2
    invoke-static/range {p1 .. p2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto :goto_9

    :cond_d
    new-instance v11, Lcom/snapchat/android/notification/AndroidNotificationManager$b;

    invoke-virtual {v13}, Lajz;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4, v5}, Lcom/snapchat/android/notification/AndroidNotificationManager$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 458
    :cond_e
    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_f

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;)V

    goto :goto_9

    .line 461
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v6, v14, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :cond_10
    move-object v13, v7

    goto/16 :goto_7

    :cond_11
    move v9, v5

    move-object v5, v4

    goto/16 :goto_5

    :cond_12
    move-object v7, v13

    move-object v4, v5

    move v5, v9

    goto/16 :goto_3

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 583
    invoke-static {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->FAILED_CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p2

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V

    .line 585
    return-void
.end method
